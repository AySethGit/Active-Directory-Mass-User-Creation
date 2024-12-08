# Create AD Groups Script

This PowerShell script automates the creation of Active Directory (AD) groups using a list of group names from an input file.

## Features
- Creates **Domain Local** security groups.
- Allows customization of the target Organizational Unit (OU) for group creation.
- Provides success and error feedback for each group creation.

## Prerequisites
- Active Directory PowerShell module installed.
- Appropriate permissions to create groups in the target OU.
- A text file containing group names (one per line).

## Parameters
| Parameter    | Description                                   | Default Value                                |
|--------------|-----------------------------------------------|---------------------------------------------|
| `InputFile`  | Path to the file containing group names.      | Mandatory                                   |
| `TargetOU`   | Distinguished Name of the target OU.          | `OU=Groups,DC=Krueger,DC=local`            |

## Usage
1. Prepare a text file with the desired group names, one per line (e.g., `Groups.txt`).
2. Run the script with the required parameters:

```powershell
.\Create-ADGroups.ps1 -InputFile "C:\Path\To\Groups.txt" -TargetOU "OU=CustomOU,DC=Krueger,DC=local"
