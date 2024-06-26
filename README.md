# goit-cs-hw-02

## Website Status Checker (check_websites.sh)

This script is written in Bash, a powerful scripting language commonly used for automating tasks in Unix-based operating systems such as Linux and macOS. The script checks the availability of specified websites and logs the results to a file. It sends HTTP HEAD requests to each website and records whether the website is up (HTTP/2 200) or down. The results include the date and time of the test.

### Usage

1. Define the list of websites to check in the `sites` array.
2. Run the script.

## Computer-Systems-hw02-copy

This project utilizes Docker Compose to orchestrate a multi-container environment for [describe your project briefly]. It simplifies the setup and deployment of the application stack, consisting of [list the services included, e.g., web server, database, etc.].

### Prerequisites

- Docker Engine
- Docker Compose

### Getting Started

To get started with this project, follow these steps:

1.  Clone the Repository:

        git clone <repository_url>
        cd <project_directory>

2.  Set Up Environment Variables:

    If necessary, configure environment variables in .env file.

3.  Build and Start the Application:

        docker-compose up -d

4.  Access the Application:

    Once the containers are up and running, access the application at

        localhost:8000
