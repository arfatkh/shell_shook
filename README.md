
# Color Quest CTF Challenge - NasCon24

## Overview

The "Color Quest" challenge was a key highlight of the NasCon24 Capture The Flag (CTF) event, designed to engage participants with a scenario involving both client-side and server-side components. This challenge simulates a real-world application, incorporating a front-end interface and a back-end CGI script intentionally vulnerable to the Shellshock bug. The uniqueness of this challenge, coupled with its intricate setup, resulted in only one successful solve out of 60+ teams and 200+ participants.

## Technology Stack

- **Frontend**: Utilizes HTML with Bootstrap for styling, providing an intuitive and user-friendly interface.
- **Backend**: Employs a Bash CGI script, purposefully vulnerable to the Shellshock bug, to mimic a real-life web security flaw.
- **Platform**: Leverages Docker to ensure a consistent and isolated runtime environment, enabling a fair and uniform challenge experience for all participants.

## Key Features

- **Dynamic Flags**: Each challenge instance generated unique flags dynamically, a feature designed to prevent flag sharing and encourage independent problem-solving among participants.
- **CTFd Integration**: Hosted on the popular CTFd platform, the challenge benefited from streamlined challenge management, participant engagement, and real-time leaderboard updates, enhancing the overall competition experience.

## Setup and Usage

### Building the Docker Image

To deploy the challenge environment, begin by building the Docker image:

```bash
docker build -t color-quest-ctf .
```

This command constructs a Docker image named `color-quest-ctf`, encapsulating the entire challenge setup as defined in the Dockerfile.

### Running the Docker Container

Once the image is ready, launch the challenge container with:

```bash
docker run -d -p 80:80 --name color-changer color-quest-ctf
```

This command initiates the container in detached mode, maps the host's port 80 to the container's port 80, and assigns it the name `color-quest`, making the challenge accessible via the host machine's web browser.

## Challenge Insights

- **Docker Integration**: By utilizing Docker, the challenge guarantees that each participant encounters an identical setup, thereby standardizing the challenge environment and focusing on the core problem-solving aspect.
- **JavaScript Obfuscation**: The challenge incorporates obfuscated JavaScript to obscure the request to the vulnerable CGI script, adding an additional layer of complexity and highlighting the importance of thorough code analysis in identifying potential security vulnerabilities.
- **Realistic Vulnerability Simulation**: The inclusion of a Shellshock-vulnerable CGI script offers participants a practical experience in exploiting web vulnerabilities, mirroring challenges faced in securing real-world web applications.

## Reflections and Looking Forward

The "Color Quest" challenge was crafted to provide a challenging yet educational experience, aiming to highlight critical web security concepts and the significance of vulnerabilities such as Shellshock. The use of dynamic flags and the CTFd platform significantly enhanced the challenge's fairness and engagement. In future iterations, we aspire to balance the challenge's difficulty with its educational value, ensuring that participants of varying skill levels find our challenges both stimulating and rewarding.
