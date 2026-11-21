LAB 6 QUICK START

1) Open this folder in VS Code.
2) Open terminal and run:
   cd lab6
   python -m venv .venv
   .venv\Scripts\activate
   python -m pip install pytest pytest-cov behave ruff
3) Run tests:
   python -m pytest -q
   python -m pytest --cov=registration --cov-report=term-missing
4) Run BDD:
   python -m behave
5) Run lint:
   python -m ruff check .

Expected pytest result: 10 passed; registration.py coverage: 100%.

IMPORTANT:
- behave and ruff could not be installed in the preparation environment because internet access was unavailable. Install them on your laptop using the command above and run the checks.
- The source ZIP did not contain a .git directory, so its previous TDD commit history was not available. Do not claim that the original Red-Green-Refactor commits exist. Open your actual team Git repository and make/push commits there.
- docs/lab6/team-story.feature contains the three scenarios based on US-02 Submit report from the team's stories.md.
