#!/usr/bin/env python3
"""
Python equivalent of task_runner.sh
Executes tasks by setting up workspace, cloning repository, and running AI assistant.
"""

import os
import sys
import subprocess
import shutil
import glob

# AI workspace directory - Can be overridden by environment variable
WK_DIR = os.path.dirname(os.path.abspath(__file__))
AI_WS_DIR = f"{WK_DIR}/.AI_ws"
CODE_UNDER_WORK_DIR = f"{WK_DIR}/code_under_work"
PROMPTS_HOME = f"{WK_DIR}/prompts"
TASK_QUEUE_HOME = f"{WK_DIR}/tasks/_queue"

if len(sys.argv) < 1:
    print("please run with python3 ./task_runner.py <task_name>")
    sys.exit(1)

TASK_NAME = sys.argv[1]


def run_command(command, cwd=None, check=True, capture_output=False):
    """Run a shell command with error handling and streaming output."""
    print(f"Running: {command}")
    try:
        process = subprocess.Popen(
            command,
            shell=True,
            cwd=cwd,
            text=True,
            encoding="utf-8",
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )

        # Stream output in real-time
        output_lines = []
        if process.stdout:
            while True:
                line = process.stdout.readline()
                if not line:
                    break
                print(line.rstrip())
                output_lines.append(line)

        process.wait()
        returncode = process.returncode

        result = subprocess.CompletedProcess(
            args=command, returncode=returncode, stdout="".join(output_lines), stderr=""
        )

        if check and result.returncode != 0:
            raise subprocess.CalledProcessError(
                result.returncode, command, result.stdout
            )

        return result
    except subprocess.CalledProcessError as e:
        print(f"Command failed: {command}")
        print(f"Error: {e}")
        if check:
            sys.exit(1)
        return e


def run_command_test_build(command, cwd=None, check=True, capture_output=False):
    """Run a shell command with error handling and streaming output."""
    print(f"Running: {command}")
    try:
        process = subprocess.Popen(
            command,
            shell=True,
            cwd=cwd,
            text=True,
            encoding="utf-8",
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
        )

        # Stream output in real-time
        output_lines = []
        if process.stdout:
            while True:
                line = process.stdout.readline()
                if not line:
                    break
                print(line.rstrip())
                output_lines.append(line)

        process.wait()
        returncode = process.returncode

        result = subprocess.CompletedProcess(
            args=command, returncode=returncode, stdout="".join(output_lines), stderr=""
        )

        if check and result.returncode != 0:
            raise subprocess.CalledProcessError(
                result.returncode, command, result.stdout
            )

        return result
    except subprocess.CalledProcessError as e:
        print(f"Command failed: {command}")
        print(f"Error: {e}")
        if check:
            sys.exit(1)
        return e


def TestBeforeModification():
    print("003 - test before modification")

    # Use the streaming run_command function
    result = run_command(
        "./scripts/ai_selfcheck.sh", cwd=CODE_UNDER_WORK_DIR, check=False
    )

    # Access the captured data
    result_code = result.returncode
    result_stdout = result.stdout

    if result_code == 0:
        with open(f"{AI_WS_DIR}/test_before.out", "w+") as f_out:
            f_out.truncate(0)
            f_out.writelines(result_stdout)
    else:
        with open(f"{AI_WS_DIR}/test_before.out", "w+") as f_out:
            f_out.writelines(result_stdout)

    print("003 - test before modification done")

    return result


def performModification(task_name):
    print("004 - perform modification")

    md_files = glob.glob(f"{CODE_UNDER_WORK_DIR}/.tmp/task.md")

    first_md_file = md_files[0] if md_files else None
    # print(f'process "{os.path.basename(first_md_file)}"')

    if first_md_file:
        # tmp_dir=f'{CODE_UNDER_WORK_DIR}/.tmp'
        # os.makedirs(tmp_dir, exist_ok=True)
        # shutil.copy(first_md_file, f'{tmp_dir}/task.md')

        # Use the streaming run_command function
        result = run_command("./OcRunTask.sh", cwd=WK_DIR, check=False)

        return result
    else:
        print("no task file need to run, exiting...")
        sys.exit(0)


def testAfterModificationAndGetExitStatus():
    print("005 - testAfterModificationAndGetExitStatus")

    # Use the streaming run_command function
    result = run_command(
        "./scripts/ai_selfcheck.sh", cwd=CODE_UNDER_WORK_DIR, check=False
    )

    # Access the captured data
    result_code = result.returncode
    result_stdout = result.stdout

    if result_code == 0:
        with open(f"{AI_WS_DIR}/test_after.out", "w+") as f_out:
            f_out.truncate(0)
            f_out.writelines(result_stdout)
    else:
        with open(f"{AI_WS_DIR}/test_after.out", "w+") as f_out:
            f_out.writelines(result_stdout)

    return result


def cleanExit():
    pass


def backToModify():
    pass


def performCorrection(i):
    print(f"006 - perform correction - {i}")

    # Use the streaming run_command function
    result = run_command("./OcRunCorrection.sh", cwd=WK_DIR, check=False)

    return result


def validateWorkEnvironment():
    if not os.path.exists(f"{CODE_UNDER_WORK_DIR}/scripts/ai_selfcheck.sh"):
        print("Error: ai_selfcheck.sh not found in scripts directory")
        sys.exit(1)

    if not os.path.exists(AI_WS_DIR):
        os.makedirs(AI_WS_DIR, exist_ok=True)

    md_files = glob.glob(f"{TASK_QUEUE_HOME}/{TASK_NAME}.md")
    if len(md_files) < 1:
        print("no task left to run")
        sys.exit(1)

    print("001 - validation passed")


def cleanWorkEnvironment():
    # if os.path.exists(AI_WS_DIR):
    #     shutil.rmtree(AI_WS_DIR)
    # os.makedirs(AI_WS_DIR)

    # if os.path.exists(f'{CODE_UNDER_WORK_DIR}/.tmp'):
    #     shutil.rmtree(f'{CODE_UNDER_WORK_DIR}/.tmp')
    # os.makedirs(f'{CODE_UNDER_WORK_DIR}/.tmp')
    print("002 - cleaning work environment")


# ---


def main():
    exit_code = 1

    # validate work environment
    validateWorkEnvironment()

    cleanWorkEnvironment()

    result = TestBeforeModification()
    exit_code = result.returncode

    performModification(TASK_NAME)

    for i in range(10):
        print("test after modification, get exit status")
        result = testAfterModificationAndGetExitStatus()
        exit_code = result.returncode

        if exit_code == 0:
            print("clean exit")
            break
        else:
            print("back to modify !")
            print("perform correction")
            performCorrection(i)

    print("done")


main()
