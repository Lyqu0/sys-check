# sys-check

Minimalist Bash script that collects basic system health metrics, writes them to `system.log`, and prints the report to the terminal.

## Metrics Logged
* Current user and date (`YYYY-MM-DD`)
* System uptime
* Root partition disk usage (`%`) with an 80% threshold alert
* Available RAM (`MB`)

## Usage
```bash
chmod +x check.sh
./check.sh
