# coursera-with-ai-support
## Pre-requisite(s)
1. OS: `Ubuntu 24.04` or above
2. Installed `docker`
## Deployment
Run `bash install.sh`
## Demonstration
- :red_circle: (Click to watch)[demo.mp4]
## Architecture
|Structure|Status|Server Name|External Port|Internal Port|
|---|---|---|---|---|
|Frontend|:orange_circle:|ReactJS-server|Port 9001|Port 3000|
|Backend|:green_circle:|Flask-server|Port 8899|Port 5000|
|Backend|:green_circle:|Keycloak-server|Port 8080<br/>(n.a.)<br/>(n.a.)|Port 8080<br/>Port 8443<br/>Port 9000|
|Database|:green_circle:|Keycloak-MariaDB-server|(n.a.)<br/>(n.a.)|Port 3306<br/>Port 33060|
## Tech. Stack
- Environment
  - OS: `Ubuntu 24.04`
  - Containerization: `Docker`
- DevOps
  - Version Control
    - `Git`
- Server
  - Frontend
    - (Not Started) ReactJS-server
      - `npm`
      - `ReactJS`
  - Backend
    - Flask-server
      - pypi:`flask`
      - pypi:`flask_oidc`
    - Keycloak-server
      - `Keycloak Configuration`
## Issue
- Session found in `Flask` but not for `ReactJS` after login, due to non-persistent data in `Flask`.
  - Proposed Solution: Store session data in persistent layer (MariaDB). Validate session data according to DB during authentication.
## Reference
- GitHub Flavored Markdown (GHFM)
  - (Basic writing and formatting syntax)[https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax]
  - (Emoji)[https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md]