# mypy + typing-extension issue reproduction

This repo demonstrates an issue that occurs when mypy is run against
code that is already installed, i.e. lives under `site-packages` in
an environment. If that environment contains
[`typing-extensions`](https://pypi.org/project/typing-extensions/),
mypy will not work.

## Running

Run `./create-venv-and-test.sh` to reproduce the issue.
