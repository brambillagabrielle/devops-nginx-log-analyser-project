# Nginx Log Analyser Project

<img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black"> <img src="https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white">

## About the Project

This project was proposed in the [DevOps Path from roadmap.sh](https://roadmap.sh/projects/nginx-log-analyser), with the objective of **parsing an access log file using different Linux commands**, such as: `awk`, `sed`, `grep`, `sort`, `uniq` and `head`, and obtain some statistics to analyse the **origin of requests received by Nginx**.

## Prerequisites

Ensure that the `awk` tool is available on your Linux terminal by running:

```bash
awk --version
```

Note: If awk is not installed, refer to the [Installing gawk (GNU)](https://www.gnu.org/software/gawk/manual/html_node/Installation.html) documentation

## Usage

To execute the script, run the following command:

```bash
./nginx-log-analyser.sh
```

Make sure the script has execute permissions. If not, you can grant them using:

```bash
chmod +x nginx-log-analyser.sh
```