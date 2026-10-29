# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Minimal Python sandbox for practicing CI/CD. There is no git repo, CI config, or README yet. `Dockerfile` and `requirements.txt` are currently empty.

- `src/main.py` — `Calculator` class. `sum` is currently a stub that returns `0`.
- `src/tests.py` — pytest-style tests. It imports with `from main import Calculator`, so tests must be run from inside `src/` (or with `src` on `PYTHONPATH`). `test_sums_2_numbers` fails on purpose: the `sum` stub is a deliberate bug used to exercise the CI pipeline. Do not "fix" it unless asked.
- `src/venv/` — a local virtualenv checked into the source tree. Ignore it when searching or editing, and do not commit it.

## Commands

Run from the repo root on Windows:

```
src\venv\Scripts\activate
cd src
python -m pytest tests.py                              # all tests
python -m pytest tests.py::test_sums_2_numbers         # single test
```

pytest is listed in `requirements.txt`. The default pytest discovery pattern is `test_*.py`, so the file `tests.py` must be passed explicitly (or `python_files` configured).
