# Installed APT packages

Run the command `apt list --installed | awk -F '/' '{print $1}' >| installed-pkgs`

