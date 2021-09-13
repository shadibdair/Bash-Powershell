# Week_02
- Bash Script Project Using Git -  Password Validator
  - Version 1 (Main branch)
  - Version 2 (Feature branch)
  - Bash script with GUI - Password Validator (Advanced branch)
- PowerShell Script Using Git - Password Validator (Powershell branch)

---

## In the main branch - You found the basic bash script Password Validator ... (version 1)
#### If You want to run the project.
  - git clone.
  - before you run the script.
    - run this command in your terminal(CMD) - `chmod +x [Filename.sh]`
    - then - `./filename.sh "YourPassword"`

## What it do :
This script ask you to insert your password then the script validated it.\
You have to stand behind the requerments.
#### The requerments is :
 - Length – minimum of 10 characters.
 - Contain both alphabet and number.
 - Include both the small and capital case letters.

## How it look :
<img width="824" alt="validator-password-bash-v1" src="https://user-images.githubusercontent.com/43513994/133097577-34a9182f-04a2-46e5-9726-87123bf5798c.png">

---
---

## In the feature branch - You found the bash script Password Validator ... (version 2)
#### If You want to run the project.
  - git clone.
  - before you run the script.
    - run this command in your terminal(CMD) - `chmod +x [Filename.sh]`
    - then - `./filename.sh -f "/path/password.txt"`
    - add new text file, and insert in it "YoutPassword"
   
## What it do :
Improved the script.\
The Different in this script that, The script validate your password according what you insert in the text file.\
That mean when you changed the password in your text file, the script will validate the new password according the text file.

## How it look :
<img width="816" alt="v2-pic01" src="https://user-images.githubusercontent.com/43513994/133104068-ed745ae9-224c-4238-b096-d82169b237c3.png">
<img width="812" alt="v2-pic02" src="https://user-images.githubusercontent.com/43513994/133104149-8acca3f2-08b6-4e77-8951-b14008712153.png">

---
---

## In the powershell branch - You found the basic powershell script Password Validator
#### If You want to run the project.
  - git clone.
  - before you run the script.
    - run this command in your terminal(CMD) - `chmod +x [Filename.ps1]`
    - then - `./filename.ps1 "YourPassword"`

## What it do :
This script ask you to insert your password then the script validated it.\
You have to stand behind the requerments.
#### The requerments is :
 - Length – minimum of 10 characters.
 - Contain both alphabet and number.
 - Include both the small and capital case letters.

## How it look :
<img width="1092" alt="Validator-Password-Powershell" src="https://user-images.githubusercontent.com/43513994/133108061-3bbccc3c-887d-421a-a4ab-523fcd57ff0d.png">

---
---

## In the advanced branch - You found the bash script Password Validator ... (advanced script using GUI)
#### If You want to run the project.
  - git clone.
  - before you run the script.
    - run this command in your terminal(CMD) - `chmod +x [Filename.sh]`
    - To run this bash script you need to install this command - > run this command in your terminal(CMD) - `brew install newt`(If you use MAC OS) OR `apt-get install whiptail`(If you use UBUNTU)
    - then - `./filename.sh -f "/path/password.txt"`
    - add new text file, and insert in it "YoutPassword"
   
## What it do :
Advanced bash script using `whiptail` to build the GUI.\
It's worked the same (Password Validator) ... BUT with amazing UI.


## How it look :
- Step 1
<img width="746" alt="step01" src="https://user-images.githubusercontent.com/43513994/133121557-6e6d5980-8fcb-426d-b244-2fa92a3f16ab.png">
- Step 2
<img width="1064" alt="step02" src="https://user-images.githubusercontent.com/43513994/133121654-fc381c60-b35c-4fc1-bca4-20588ad5d97a.png">
- Step 3
If you choosed number `2) The requerments of password` :
<img width="1064" alt="step03" src="https://user-images.githubusercontent.com/43513994/133122685-a4b413b4-80d9-4fea-bfd0-227b2d45829a.png">
- Step 4
If you choosed number `1) Enter your password` :
- Step 5
<img width="1064" alt="step04" src="https://user-images.githubusercontent.com/43513994/133122910-2c1a9368-9e63-4db1-b54f-59126bf11906.png">
- Step 6
<img width="1064" alt="step05" src="https://user-images.githubusercontent.com/43513994/133123080-5b9ff3ca-67d2-4eba-aba6-644c6d2d87d7.png">
- Step 7
<img width="1064" alt="step06" src="https://user-images.githubusercontent.com/43513994/133123156-003ade67-2812-418f-8d62-18d25218da79.png">
- Step 8
I Entered a Valid Password the result is :
<img width="1064" alt="step07" src="https://user-images.githubusercontent.com/43513994/133123188-da3467dd-2c49-4503-a8c7-e1d1897fde16.png">
