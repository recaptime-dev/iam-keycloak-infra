# Keycloak IAM Configuration

This repository contains the deployment script for our [Keycloak](https://www.keycloak.org/) instance inside and outside the company, useful if we ever upgraded our tailnet and GitHub/GitLab SaaS orgs to Enterprise-level paid plans with SAML authenication support.
The canonical repository is on GitLab SaaS at <https://gitlab.com/MadeByThePinsHub/infra/keycloak-iam>, so please take all of your issues and merge requests there instead.

## Development Environment Setup

> **Hate the manual work?** Automate it by [opening this repository in Gitpod](https://gitpod.io/#https://gitlab.com/MadeByThePinsHub/infra/keycloak-iam). Since both `RecapTime` and the corporate `MadeByThePinsHub` GitHub orgs are on the free plan, there's no Codespaces option yet.

TDB

### Included in Dev Environment Container

Everything in `gitpod/workspace-full` Docker image, plus:

* Railway CLI
* Hadolint and ShellCheck
* GitHub CLI (through the official package repository for Debian/Ubuntu) and GLab CLI (through our own PPA at `https://madebythepinshub.gitlab.io/ppa`)

## License

MIT
