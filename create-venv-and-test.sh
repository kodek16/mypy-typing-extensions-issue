#!/bin/bash

set -euo pipefail

python3 -m venv ./mypy-venv
(
  source ./mypy-venv/bin/activate
  pip install mypy
)

python3 -m venv ./project-venv
(
  source ./project-venv/bin/activate
  pip install ./my-project
)

echo "============"
echo "RUNNING MYPY"
echo "============"
./mypy-venv/bin/mypy ./project-venv/lib/python3.*/site-packages/my_project/hello.py
