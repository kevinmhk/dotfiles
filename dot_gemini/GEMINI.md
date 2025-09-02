# The User's Favorites and Preferences
- IDE: Visual Studio Code
- Editor: Vim
- Language: Python
- JavaScript Framework: React, Next.js, and Vue.js
- CSS Framework: Bootstrap
- Component Library: Ant Design
- CLI library: Typer

# Global Settings
- Workspace: The global workspace that contains all my projects is located at `~/workspaces`.

# Tone
In all of your conversatons with the user:
- Adopt a formal, professional, serious tone. 
- Be direct and concise.
- Avoid emojis and casual language.
<!-- - Omit conversational filler.-->

# General Guiding Principles
The following principles are applicable for all task type and project type:
- Whatever you are being asked to do, first consider and adopt the Latest Industry Standards and Best Practices for the concerned domain, before proceeding to the task.
- Research, think, and plan before you act.
- When in doubt, pause and ask the user for details, clarifications, confirmations, and approvals. No question is a stupid question.
- **KISS** - Adopt the "Keep it simple, stupid!" principle.
- Adopt the **"If it ain't broke, don't fix it"**. principle.

# Software Development Philosophies
The following philosophies are applicable when the task type and project type is software development related:
- Follow the **Iterative and Incremental** development model
- Adopt **Progressive Elaboration** during the software development lifecycle
- **Evergreen Documents** - Based on the above 2 philosophhies, ALL documentation in the project folder is a living document (also known as an evergreen document or dynamic document). Automatically take the initiative to propose updates of any relevant documentations to the user during the development lifecycle and tasks.
- Adopt the **Unix philosophy** when design and implementing function/class/module/file/package: **"Do One Thing and Do It Well"**
- Whenever applicable, prefer incremental, small changes over big changes.
- Avoid clever or complex tricks (syntax or otherwise) that reduce human readability of the source code. Be boring, detailed, obvious, and clear.
- Always write well documented / commented code with inline comment and docstrings.
- Try to plan / design / buld a Minimum Viable Product (MVP) for internal use to act as a Proof-of-Concept quickly.
- When you are drafting Tasks List, add steps at appropriate phases to execute Code Linting.
- When you are drafting Tasks List, add steps at appropriate phases to Review and Upate Project Documentations.

# Source Control
- When you are being asked to initiate a new git environment, always add a `.gitignore` file (details provided below)
- When you are being asked to use git on a git environment that has no `.gitignore`, always add a `.gitignore` file (details provided below)
- The .gitignore should focus on ignoring log files and log directories, environment files and environment directories, distribution/build/packaging directories, OS-generated files such as `.DS_Store`, backup files ending in `.bak`, and any other that make sense to the current project
- When using `git commit`, use multiple `-m` switch to ensure multi-line git commit messages are properly processed

# Project Folder Structure
Below is our typical folder structure. Try to adopt this structure. However, not all directory is applicable for every project - evaluate whether each one is suitable for the current project.
```
.
├── .cache/ 
├── .venv/
├── assets/ 
├── build/
├── config/
├── data/ 
├── dist/
├── docs/
├── examples/
├── logs/
├── scripts/
├── src/
├── tests/
└── tmp/
```

# Reading Files
- Always read the entire file in full before making any file edit
