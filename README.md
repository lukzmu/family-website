![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/lukzmu/family-website/pages.yml)
![Codecov](https://img.shields.io/codecov/c/github/lukzmu/family-website)
![GitHub](https://img.shields.io/github/license/lukzmu/family-website)

# Family Website

Żmudziński family website written using Python thanks to the Pelican package. The website shows our family members, animals and history.

The deployment is done through Github Actions and posted on GitHub Pages.

## Requirements

- Python 3.11
- Docker
- Docker Compose
- Make

## Environment Variables

| **Variable** | **Description** |
| :--- | :--- |
| `SITEURL` | The url of the final website |

## Useful commands

| **Action** | **Command** |
| :--- | :--- |
| Build the project | `make build` |
| Run the project | `make run` |
| Format project | `make fmt` |
| Lint project | `make lint` |
| Test project | `make test` |
| Clean docker project files | `make clean` |
| Update poetry lock | `make update-lock` |