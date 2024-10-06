# Introduction

Tenable has security softwear used by many companies to secure thier IT infrastruture. The program Tenable.sc (Security Center) is a program or server application that collects scan results from other Tenable products. 

A successful scan is one where certain plugins don't trigger. 
The security team using tensble.sc or Nessus want to see the output of plugin 19506 show credentialed=true. The proplem is that you have do drill down through many screens in order to get that information. The propose of the check-scans script is to assist in verifing that all the assests had credentialed scsns.
This script focuses on checking Nessus scans to verify that they ran with credentials  

## Instructions
Must have elevated privileges, or be in the tns group to run the script.
```bash
chmod +x check-scans.sh
sudo ./check-scans.sh
```


# Check Scans

Check Scans is a script designed to verify that security scans performed using Tenable.sc and Nessus were conducted properly, with a particular emphasis on ensuring that they were credentialed scans. This script is intended for use by vulnerability managers to streamline the verification process.

## Purpose
The primary purpose of the Check Scans script is to assist in verifying that all assets have undergone credentialed scans. In most cases, a successful scan is indicated by certain plugins not triggering, particularly plugin 19506 showing `credentialed=true`. The script automates the process of checking these details, which would otherwise require navigating through multiple screens in the Tenable.sc or Nessus interface.

## Features
- Verifies that scans were conducted with credentials.
- Automates the extraction of scan details, reducing manual effort.
- Supports Tenable.sc and Nessus.

## Installation
To install and prepare the script for use, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/2bitninja/check-scans.git
   ```
2. Navigate to the directory:
   ```bash
   cd check-scans
   ```
3. Make the script executable:
   ```bash
   chmod +x check-scans.sh
   ```
## Usage
To use the Check Scans script, you need elevated privileges or be part of the tns group. Run the following command:
   ```bash
   sudo ./check-scans.sh
   ```
## Contributing
We welcome contributions! Please read our Contributing Guidelines for more information.
## License
This project is licensed under the MIT License - see the LICENSE file for details.