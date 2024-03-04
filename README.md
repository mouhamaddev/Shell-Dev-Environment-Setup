# Shell-Dev-Environment-Setup

I've found myself repeatedly setting up the Django and Angular development environment daily, going through the routine of navigating to the folder via terminal, initiating a virtual environment, and launching the development environment for each application. So, I've crafted a shell script to automate these mundane yet essential tasks :)

To use this script:
1) Clone this repo
2) Change the path of your folders and projects
3) Make the script executable by running the following command: chmod +x file.sh
4) Run the script: ./file.sh frontend

The script will run Django and Angular server and the parameter added (frontend or backend) will open vs code depending on the project chosen.

Operating system used: Arch Linux
Desktop environment used: GNOME
Default code editor: Visual Studio Code
Default terminal: GNOME Terminal
