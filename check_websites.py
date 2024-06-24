import requests
from datetime import datetime

# Define the list of websites to check
sites = ["https://google.com", "https://facebook.com", "https://twitter.com"]

# Specify the log file name
log_file = "results.txt"

# Get the current date and time
current_datetime = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

# Open the log file for writing
with open(log_file, 'w') as file:
    # Log the date and time of the test
    file.write(f"Test conducted at: {current_datetime}\n\n")
    
    # Check each website
    for site in sites:
        try:
            response = requests.head(site)
            if response.status_code == 200:
                file.write(f"[{site}]({site}) is UP\n")
            else:
                file.write(f"[{site}]({site}) is DOWN\n")
        except requests.exceptions.RequestException:
            file.write(f"[{site}]({site}) is DOWN\n")

# Print a message indicating the log file name
print(f"Results have been recorded in the log file: {log_file}")
