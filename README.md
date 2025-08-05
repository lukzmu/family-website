![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/lukzmu/family-website/pages.yml)
![Codecov](https://img.shields.io/codecov/c/github/lukzmu/family-website)
![GitHub](https://img.shields.io/github/license/lukzmu/family-website)

# Family Website

Żmudziński family website written using Python thanks to the Pelican package. The website shows our family members, animals and history.

The deployment is done through Github Actions and posted on GitHub Pages.

## Requirements

- Python 3.13
- [uv package](https://github.com/astral-sh/uv)

## Environment Variables

| **Variable** | **Description** |
| :--- | :--- |
| `SITEURL` | The url of the final website |

## Useful commands

| **Action** | **Command** |
| :--- | :--- |
| Build the project | `uv run poe build` |
| Run the project | `uv run poe serve` |
| Format project | `uv run poe lint_fix` |
| Lint project | `uv run poe lint` |
| Test project | `uv run poe test` |
