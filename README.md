# Color Quest CTF Challenge - NasCon24

## Overview

"Color Quest" was a standout challenge at the NasCon24 Capture The Flag (CTF) event, featuring a mix of client-side and server-side components. This challenge involved a front-end interface and a back-end CGI script with a deliberate Shellshock vulnerability. Out of 60+ teams and 200+ participants, only one team solved it, showcasing its complexity.

## Challenge Insights

- 🐳 **Docker Integration**: Ensures a uniform environment for all participants.
- 🔒 **JavaScript Obfuscation**: Adds complexity and emphasizes code analysis.
- 🐚 **Realistic Vulnerability Simulation**: Provides practical experience with web vulnerabilities like Shellshock.

## Technology Stack

- 🌐 **Frontend**: HTML with Bootstrap for a user-friendly interface.
- 🖥️ **Backend**: Bash CGI script with a Shellshock vulnerability.
- 🐳 **Platform**: Docker for a consistent and isolated runtime environment.

## Key Features

- 🏳 **Dynamic Flags**: Each instance generated unique flags to prevent sharing.
- 📊 **CTFd Integration**: Hosted on CTFd for challenge management and real-time leaderboards.

## Setup and Usage

### 🛠️ Building the Docker Image

Build the Docker image:

```bash
docker build -t color-quest-ctf .
```

### 🚀 Running the Docker Container

Run the container:

```bash
docker run -d -p 80:80 --name color-changer color-quest-ctf
```

Access the challenge via your web browser on the host machine.
