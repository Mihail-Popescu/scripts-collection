GenerateVoucherCode(){
    prefix := "GeniusBF24_"
    Random, rand, 111111, 999999 ;
    
    Loop 6 {
        Random, charType, 1, 2 ; Randomly choose between letter and number
        if (charType = 1) {
            Random, char, 97, 122 ; ASCII range for lowercase letters (a-z)
            code .= Chr(char)
        } else {
            Random, char, 48, 57 ; ASCII range for digits (0-9)
            code .= Chr(char)
        }
    }
    
    return prefix . code
}

NumpadAdd::
    Loop {
 	; Click on the input box (replace coordinates with actual coordinates)
        Click, 830, 400 ; Example coordinates (replace with actual coordinates)
        Sleep 50
        
        voucher_code := GenerateVoucherCode()
        
        ; Input the voucher code directly after clicking the input box
        SendInput, %voucher_code%
        Sleep 50 ; Adjust as needed
        
        ; Click the "Aplica Voucher" button (modify to match the button's position or ID)
        Click, 940, 880 ; Example coordinates (replace with actual coordinates)
        Sleep 250 ; Adjust as needed
        

	Click, 940, 880 ; Example coordinates (replace with actual coordinates)
        Sleep 50 ; Adjust as needed
        

    }
return

NumpadSub::Reload