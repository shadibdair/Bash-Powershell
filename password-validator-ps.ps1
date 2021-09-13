
# Author - Shadi Badir
# [Password Validator] 
# PowerShell Script
function Main {
  # Read The Parameter
  $stringx=$args[0]
  Write-host "--- Welcome To Password Validation ---" -ForegroundColor Magenta
  #$stringx=Read-host "Enter String"
  $count = $stringx.Length
  Write-Host "Let's see if you stand behind the requirements :" -ForegroundColor DarkBlue
  # Display The Number Of Characters
  write-host "$stringx has $count Characters" -ForegroundColor Gray
  # Called The Functions
  Ten_characters
  Lowercase
  Uppercase
  Numbers
}
# -----------------------------------------------------
# Chcek If The Password Doesn't Contain At Least 1 LowerCase.
function Lowercase (){
  $regex1 = "[a-z]"
  If ($stringx –cmatch $regex1) {
    write-host "- Lower Case - " -nonewline; Write-Host "YES " -f Green;
  }
  Else
  {
    Write-Host "- Case - Error : " -ForegroundColor Red -nonewline;
    write-host "Please include lower Character/s in your password" -ForegroundColor Red
    #exit 1
  }  
}
# Chcek If The Password Doesn't Contain At Least 1 UpperCase.
function Uppercase (){
  $regex2 = "[A-Z]"
  If ($stringx –cmatch $regex2) {
    write-host "- Upper Case - " -nonewline; Write-Host "YES " -f Green;
  }
  Else
  {
    Write-Host "- Upper Case - Error : " -ForegroundColor Red -nonewline;
    write-host "Please include upper Character/s in your password" -ForegroundColor Red
    #exit 1
  }
}
# Chcek If The Password Doesn't Contain At Least 1 Digits.
function Numbers (){
  $regex3 = "[0-9]"
  If ($stringx –cmatch $regex3) {
    write-host "- Number in String - " -nonewline; Write-Host "YES " -f Green;
  }
  Else
  {
    Write-Host "- Number - Error : " -ForegroundColor Red -nonewline;
    write-host "Please include number's in your password" -ForegroundColor Red
    #exit 1
  }
}
# Chcek If The Password Doesn't Contain At Least 10 Characters.
function Ten_characters (){
  $count = $stringx.Length + 1
  if ($count -le 10) {
    write-host "- Characters - Error : Password should at least be 10 characters or more" -ForegroundColor Red
  }
  else
  {
    #Write-Host "Let's see if you stand behind the requirements :" -ForegroundColor DarkBlue
    Write-Host "- More than 10 characters - " -nonewline; Write-Host "YES " -f Green;
  }
}
# ------------------------------------------------------
# Called The Main Function.
Main($args[0])
