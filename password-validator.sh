#!/bin/bash

# ------ Version 1 ------

# Colored The Alerts Messages.
GREEN="\033[1;32m" # For Bad Input
RED="\033[1;31m"   # For Success Input
BLUE='\033[1;34m'  # Blue Text
YELLOW='\033[1;93m' # Yellow Text
WHITE='\033[1;97m'  # White Text
PURPLE='\x1B[01;95m' # Purple Text 
# ------------------------

# The Main Function.
main(){ 
    # Pass The Argument To Shell Script - Called "Positional Parameter"
    PASS=$1
    # These Functios Validate Your Password.
    contain_characters
    contain_lowercase
    contain_numbers
    contain_uppercase
    # --------------------------------
    # Only If The Password Is Valid.
    user_interface
    echo -e " ${GREEN}You entered a valid password : ${PASS}"
    exit 0   
}

# Chcek If The Password Doesn't Contain At Least 10 Characters.
contain_characters(){
    # Stored The Input into Variable 'COUNT'.
    COUNT=`echo ${#PASS}`
    # The Question That If The Input - Is Less Than 10 Characters. 
    if [[ $COUNT -lt 10 ]]; then
    user_interface
    echo -e "${RED} Error: Password must contain at least 10 characters!"
    exit 1
    fi }
# Chcek If The Password Doesn't Contain At Least 1 LowerCase.
contain_lowercase(){
    # The Grep Is Look IF The Input Contain Lowercase Inside The Input. 
    echo $PASS | grep "[a-z]"
    # The Question That If The Input Contain Any Lowercase - Is Not Equal To 0.
    if [[ $? -ne 0 ]]; then
    user_interface
    echo -e "${RED} Error: Password must contain at least 1 lowercase!"
    exit 1
    fi }
# Chcek If The Password Doesn't Contain At Least 1 Digits.
contain_numbers(){
    # The Grep Is Look IF The Input Contain Digits Inside The Input.
    echo $PASS | grep "[0-9]"
    # The Question That If The Input Contain Any Digits - Is Not Equal To 0.
    if [[ $? -ne 0 ]]; then
    # Add Colored For The User - To Have Good Experience.
    user_interface
    echo -e "${RED} Error: Password must contain at least 1 digits!"
    exit 1
    fi }
# Chcek If The Password Doesn't Contain At Least 1 UpperCase.
contain_uppercase(){
    # The Grep Is Look IF The Input Contain Uppercase Inside The Input. 
    echo $PASS | grep "[A-Z]"
    # The Question That If The Input Contain Any Uppercase - Is Not Equal To 0.
    if [[ $? -ne 0 ]]; then
    user_interface
    echo -e "${RED} Error: Password must contain at least 1 uppercase!"
    exit 1
    fi
}
# User Interfce Colored.
user_interface(){
    echo -e "${YELLOW} <--------------------------------------->"
    echo -e "${YELLOW} --->${BLUE} Welcome To Password Validation ${YELLOW}<---"
    echo -e "${YELLOW} <--------------------------------------->"
    echo -e "              ${PURPLE} Hey My Friend!"
    echo -e "${WHITE} Your Result Is :"
}

# Called The Main Function.
main "$1"
# ------------------------
