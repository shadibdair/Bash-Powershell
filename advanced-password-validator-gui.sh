#!/bin/bash

# Author - Shadi Badir
# [Password Validator]
# Bash Script + GUI.

## Util Methods:
function displayMessage() {
    whiptail --title "$1" --msgbox "$2" 8 70
}

# The Main Function.
function main() {
# The Defautl Color For The GUI.
export NEWT_COLORS='
emptyscale=,gray
fullscale=,blue
'
# While Loop - Repeat A Statement Until You Choose The Cancel Button.
while true; do
        # Show you The Menu At The Start
        menu=$(whiptail --title "Password Validation" --ok-button "Select" --cancel-button "Quit" --menu  "Menu : " 20 70 10\
            "1" "Enter your password" \
            "2" "The requirements of password" \
            3>&1 1>&2 2>&3) # The numbers are file descriptors[(0:stdin),(1:stdout),(2:stderr)]
        # To Saved The Value.
        exitstatus=$?
        # If Statement For The Value
        if [ ${exitstatus} = 0 ]; then
            case ${menu} in
                1)
                    validatePassword
                ;;
                2)
                    messageRequirements
                ;;
            esac
        else
            exit
        fi
    done
}

# This Function To Validate Your Password, When You Call It From The Main Function.
function validatePassword() {
    # The Color For This Box (validatePassword)
    export NEWT_COLORS='entry=,gray'
    PASSWORD=$(whiptail --title "Password" --passwordbox "Please enter your secret password" 8 78 3>&1 1>&2 2>&3)
    # Called A Function That Show To You That We Proccess Your Password !
    processValidationPassowrd
    # To Save The Password Length.
    len="${#PASSWORD}"
    # Here You Can See - That We Test Your Password, According To The Requirements.
    if test $len -ge 10 ; then
        echo "$PASSWORD" | grep -q [0-9]
        if test $? -eq 0 ; then
            echo "$PASSWORD" | grep -q [A-Z]
                    if test $? -eq 0 ; then
                        echo "$PASSWORD" | grep -q [a-z]   
                        if test $? -eq 0 ; then
                        echo $?
                        export NEWT_COLORS='
                        title=white,green
                        textbox=white,green
                        button=black,white'
                        displayMessage "Valid password" "Your password is: ${PASSWORD}"
                        #echo $?
                        #exit 0
                    else
                        echo $?
                        export NEWT_COLORS='
                        title=white,red
                        window=,red
                        textbox=white,red
                        button=whire,white'
                        displayMessage "Error" "${RED}password must contain at least one lowercase letter (a-z)!: ${PASSWORD}"
                        #exit 1
                    fi
                else
                echo $?
                export NEWT_COLORS='
                title=white,red
                window=,red
                textbox=white,red
                button=black,white'
                displayMessage "Error" "${GREEN}password must contain uppercase letter (A-Z)!: ${PASSWORD}"
                #exit 1
                fi
        else
        echo $?
        export NEWT_COLORS='
        title=white,red
        window=,red
        textbox=white,red
        button=black,white'
        displayMessage "Error" "${GREEN}password must contain number!: ${PASSWORD}"
        #exit 1
        fi
    else
        echo $?
        export NEWT_COLORS='
        title=white,red
        window=,red
        textbox=white,red
        button=black,white'
        displayMessage "Error" "${GREEN}Password must contain at least 10 characters!: ${PASSWORD}"
        #exit 1
    fi
    # The Reason - To Reset The Color As The Default.
    export NEWT_COLORS='
    emptyscale=,gray
    fullscale=,blue
'
}
# This Function Just To Show The Customers A Message Box That We Are Process The Password.
function processValidationPassowrd() {
    {
        # For That Take 5 Seconds Until Finish.
        for ((i = 0 ; i <= 100 ; i+=5)); do
            sleep 0.1
            echo $i
        done
       # A Message What A Customer See.
    } | whiptail --gauge "Please wait while we checking your password !..." 6 50 0

}
# Function - An Option That The Customer See If He Choose The Second Option
# For Example : Before Enter The Password He Can Look What Is The Requerments.
function messageRequirements() {
    # The Box That You Will See.
    whiptail --title "The Requirements" --msgbox "1) Length – minimum of 10 characters.\
                                                  2) Contain both alphabet and number.\
                                                  3) Include both the small and capital case letters." 10 78
}
# Called The Main Function To Start The Game ;)
main

