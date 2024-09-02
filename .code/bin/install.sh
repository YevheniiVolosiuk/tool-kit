#!/usr/bin/env bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
BIN_DIRECTORY="$SCRIPT_DIR"

source "$BIN_DIRECTORY/helpers/color_helpers.sh"
source "$BIN_DIRECTORY/helpers/functions.sh"
source "$BIN_DIRECTORY/commands/help.sh"

display_banner

echo -e "${BOLD}🚀 Application Starter Kit 🚀${RESET}"

echo "Installing the 'kit' alias"
BASH_FILE=$(bash_file)
echo_yellow "BASH_FILE: ${BASH_FILE}"
create_bash_alias kit "./kit"
echo
echo "💥 kit ALIAS has been installed"
echo
echo "👉 You may need to copy and run the following command to use this new alias:"
echo_command "source $BASH_FILE"
