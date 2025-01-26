[org 0x0100]

jmp Start 
;	........................Strings Data......................
welcomeString db ' Welcome to Mind Grid ', 0
ButtonsString db 'Buttons (B)' , 0
QuitString db '  Quit (Q)' , 0
MenuString db ' Menu (ESC)' , 0
NotesString db ' Notes (N)' , 0
MistakeString db 'Mistakes : 0 / 5' , 0 
TimerString db 'Timer ' , 0 
ScoreString db 'Score : ' , 0 
UndoString db ' Undo (U)' , 0
WrongString db 'Wrong     Input' , 0
PauseString db ' Pause (P)' , 0
DiffOption1 db ' Easy ' , 0
DiffOption2 db ' Medium ' , 0
DiffOption3 db ' Hard ' , 0
StartString db '>>>> Press ENTER to Start <<<<', 0
Gamepause db '>>>> Press P to Continue <<<<', 0
LevelString db ' Difficulty Level ' , 0 
Level1 db ' Basic ' , 0 
Level2 db ' Advance ' , 0 
Option1 db ' Play Game ', 0
Option2 db ' Instructions ', 0
Option3 db ' Settings ', 0
Option4 db ' Quit Game ', 0
BasicLvl db '>>>> Basic Level Selected <<<<', 0
AdvanceLvl db '>>>> Advnace Level Selected <<<<', 0
QuitMessage db 'Thank you for playing! You have exited the Mind Grid game.', 0
QuitMessage2 db 'Exiting Game.......', 0
IntMessage1 db 'Just make sure every row, column, and box have non repeating numbers', 0
IntMessage2 db 'because mind grid is not about speed, its about style!!', 0
MenuMessage db '>>> Press ESC For Menu <<<<' , 0
Credits db 'Developed By Uzair Ahmad (23L-0594)' , 0
WinInputString db 'Press Q to Quit or R to Restart ' , 0 
Audio db ' Audio ' ,0 
On db 'On ' , 0
Off db 'Off' , 0
PlayOption1 db ' Play ', 0
PlayOption2 db ' Restart ', 0
PlayOption3 db ' Back ', 0
Remaining9x9Digits db 'Remaining :' , 0
FinalScore db 'Final Score is ' , 0
LostString db 'You Have Made 5 Mistakes' , 0
;	........................Ascii Arts......................
ArtLine1 db '  __  __  ___  _   _  ____    ____  ____   ___  ____   ', 0
ArtLine2 db ' |  \/  ||_ _|| \ | ||  _ \  / ___||  _ \ |_ _||  _ \  ', 0
ArtLine3 db ' | |\/| | | | |  \| || | | || |  _ | |_) | | | | | | | ', 0
ArtLine4 db ' | |  | | | | | |\  || |_| || |_| ||  _ <  | | | |_| | ', 0
ArtLine5 db ' |_|  |_||___||_| \_||____/  \____||_| \_\|___||____/  ', 0
ArtLine6 db '                                                       ', 0

ArtLineA db ' _  _  ____  __     ___  __   _  _  ____ ', 0
ArtLineB db '/ )( \(  __)(  )   / __)/  \ ( \/ )(  __) ', 0
ArtLineC db '\ /\ / ) _) / (_/\( (__(  O )/ \/ \ ) _) ', 0
ArtLineD db '(_/\_)(____)\____/ \___)\__/ \_)(_/(____)', 0

AsciiArtLine1 db '  _____       _    _  _____ ______ _____  ', 0
AsciiArtLine2 db ' |  __ \ /\  | |  | |/ ____|  ____|  __ \ ', 0
AsciiArtLine3 db ' | |__) /  \ | |  | | (___ | |__  | |  | |', 0
AsciiArtLine4 db ' |  ___/ /\ \| |  | |\___ \|  __| | |  | |', 0
AsciiArtLine5 db ' | |  / ____ \ |__| |____) | |____| |__| |', 0
AsciiArtLine6 db ' |_| /_/    \_\____/|_____/|______|_____/ ', 0

gameArt1 db '   ______                        ____                 ', 0
gameArt2 db '  / ____/___ _____ ___  ___     / __ \_   _____  _____', 0
gameArt3 db ' / / __/ __ `/ __ `__ \/ _ \   / / / / | / / _ \/ ___/', 0
gameArt4 db '/ /_/ / /_/ / / / / / /  __/  / /_/ /| |/ /  __/ /    ', 0
gameArt5 db '\____/\__,_/_/ /_/ /_/\___/   \____/ |___/\___/_/     ', 0

winart1 db " __   __           __        __          _  ", 0
winart2 db " \ \ / /__  _   _  \ \      / /__  _ __ | |", 0
winart3 db "  \ V / _ \| | | |  \ \ /\ / / _ \| '_ \| |", 0
winart4 db "   | | (_) | |_| |   \ V  V / (_) | | | |_|", 0
winart5 db "   |_|\___/ \__,_|    \_/\_/ \___/|_| |_(_)", 0

QuitArt1 db "   ______     ___      ___   ______   ______  ____  ____  ________  ", 0
QuitArt2 db " .' ___  |  .'   `.  .'   `.|_   _ `.|_   _ \|_  _||_  _||_   __  | ", 0
QuitArt3 db "/ .'   \_| /  .-.  \/  .-.  \ | | `. \ | |_) | \ \  / /    | |_ \_| ", 0
QuitArt4 db "| |   ____ | |   | || |   | | | |  | | |  __'.  \ \/ /     |  _| _  ", 0
QuitArt5 db "\ `.___]  |\  `-'  /\  `-'  /_| |_.' /_| |__) | _|  |_    _| |__/ | ", 0
QuitArt6 db " `._____.'  `.___.'  `.___.'|______.'|_______/ |______|  |________| ", 0

PlayArt1 db ' ___                _        ', 0
PlayArt2 db '| _ \ ___  __ _  __| | _  _  ', 0
PlayArt3 db '|   // -_)/ _` |/ _` || || | ', 0
PlayArt4 db '|_|_\\___|\__,_|\__,_| \_, | ', 0
PlayArt5 db '                       |__/  ', 0

;	........................Other Data......................
SelectedOption db 0 
PlayOptions db 0
LvlOptions db 0 
color db 0
TotalMistakes db 4
noteDivisor dw 0
Grid9x9DigitsCOunt db 39h , 39h , 39h , 39h , 39h , 39h , 39h , 39h , 39h
Grid4x4DigitsCount db 34h , 34h , 34h , 34h

counterMin: dw 0     
counterSec: dw 0   
counterMS:  dw 0      

isPaused:   db 0    
OriginalISR: dd 0
isLeft:  db 0 

UndoIndex db 0  
NotesMode db 0 
 
CompletedLines: db 0 
CompletedFlags db 4 dup(0) 
Array4x4Score: dw 500
Array4x4 db 31h, 20h, 32h, 20h   
         db 20h, 33h, 20h, 34h  
         db 34h, 20h, 20h, 31h    
         db 20h, 31h, 20h, 32h  	 
		 
Notes4x4: times 16 db 20h, 20h, 20h, 20h
CompletedLines9x9: db 0 
CompletedFlags9x9 db 9 dup(0) 
Array9x9Score: dw 990
Notes9x9: times 81 db 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h, 20h
Array9x9   db  20h, 38h, 32h, 34h, 37h, 35h, 31h, 33h, 20h
           db  39h, 37h, 20h, 20h, 33h, 20h, 38h, 20h, 20h
           db  33h, 31h, 35h, 32h, 20h, 38h, 20h, 20h, 20h
           db  31h, 36h, 20h, 20h, 20h, 20h, 20h, 20h, 38h
           db  34h, 39h, 37h, 38h, 31h, 32h, 33h, 20h, 20h
           db  20h, 20h, 20h, 39h, 36h, 33h, 37h, 20h, 20h
           db  20h, 20h, 36h, 31h, 34h, 39h, 35h, 37h, 33h
           db  35h, 20h, 20h, 20h, 38h, 37h, 39h, 36h, 32h
           db  37h, 33h, 39h, 35h, 32h, 36h, 34h, 20h, 20h
AudioMuted db 0  
CurrentLevel db 0
SelectedButton db 30h
GridSelected4x4 db 0 
GridSelected9x9 db 0
StrBtnTop db 201 , 205 , 205 , 205 , 205 , 205 , 205 ,205 , 205 , 205 ,205 , 205 ,205 , 205 , 187 , 0 
StrBtnBottom db 200 , 205 ,205 , 205 ,205 , 205 , 205 ,205 , 205 , 205 ,205 , 205 ,205 , 205 ,  188, 0 
StrBtnSide db 186 , 32 , 32 , 32 ,32 , 32 , 32 ,32 , 32 , 32 ,32 , 32 ,32 , 32 , 186, 0
ButtonTop db 201 , 205 , 205 , 205 , 187 , 0 
ButtonBottom db 200 , 205 ,205 , 205 ,  188, 0 
ButtonSide db 186 , 32 , 32 , 32 , 186, 0
buttonSelected db 0
gridSelected db 0
EmptyString db '                      ', 0
GridColors db 0x6E , 0x4E
MistakeCount db 30h
LastInput dw -1 
;	........................Timer Function......................
printCounter: 
	pusha
    push es
    mov ax, 0xb800
    mov es, ax
    mov di, (1*160) + (72*2) 
	mov bx, 10
    push word [counterMin]
    push di
    call printNum

    add di, 4
    mov byte [es:di], ':'
			  
    push word [counterSec]
    add di, 4
	mov word [es:di], 0x0720
	mov word [es:di + 2], 0x0720
    push di
    call printNum

    pop es
    popa
    ret

printNum: 
	push bp
    mov bp, sp
    pusha
    push es

    mov ax, 0xb800
    mov es, ax
    mov di, [bp+4]
    mov ax, [bp+6]

    mov bx, 10
    mov cx, 0

nextdigit: 
	mov dx, 0
    div bx
    add dl, '0'
    push dx
    inc cx
    cmp ax, 0
    jnz nextdigit

printDigits: 
	pop dx
    mov dh, 0x07
    mov [es:di], dx
    add di, 2
    loop printDigits

    pop es
    popa
    pop bp
    ret 4

clockISR: 
	pusha
	cmp byte [isPaused], 1
    je clockEOI

    mov ax, [counterMin]
    cmp ax, 10
    jne incrementTime

    mov ax, [counterSec]
    cmp ax, 0
    jne incrementTime

    mov ax, [counterMS]
    cmp ax, 0
    jne incrementTime

    mov byte [isPaused], 1
    jmp clockEOI

incrementTime:

    add word [counterMS], 55
    cmp word [counterMS], 1000
    jl updateTime

    mov word [counterMS], 0
    inc word [counterSec]

updateTime: 
	cmp word [counterSec], 60
    jl clockUpdate
	sub word[Array4x4Score] , 100 
	sub word[Array9x9Score] , 100 
    mov word [counterSec], 0
	inc word [counterMin]

clockUpdate: 
	call printCounter

clockEOI: 
	mov al, 0x20
    out 0x20, al
	popa
	iret
;	........................Start Function......................
Start:
    call clrscr
	
	xor ax , ax 
	mov es , ax 
	mov ax , [es:8*4]
	mov [OriginalISR] , ax 
	mov ax , [es:8*4+2]
	mov [OriginalISR+2] , ax 

	mov byte[color] , 0x06
	mov si , ArtLine1
    mov di, (8 * 80 * 2) + (14 * 2)
	call AnimatedString
	mov si , ArtLine2
    mov di, (9 * 80 * 2) + (14 * 2)
	call AnimatedString
	mov si , ArtLine3
    mov di, (10 * 80 * 2) + (14 * 2)
	call AnimatedString
	mov si , ArtLine4
    mov di, (11 * 80 * 2) + (14 * 2)
	call AnimatedString
	mov si , ArtLine5
    mov di, (12 * 80 * 2) + (14 * 2)
	call AnimatedString
	mov si , Credits
    mov di, (18 * 80 * 2) + (25 * 2)
	call AnimatedString
	call PlayCuteWinningMelody
	call StopSound
	call clrscr
    call DisplayMenu
	call getInput
    jmp EndGame
	
ReinitializeNotes9x9:
    lea si, Notes9x9       
    mov cx, 81            

ReinitializeLoop:
    mov byte [si], 20h     
    inc si                  
    loop ReinitializeLoop   
    ret
	
Reinitialize_Notes4x4:
    lea di, Notes4x4      
    mov cx, 16           

Reinitialize_Loop:
    mov byte [di], 20h   
    inc di                   
    loop Reinitialize_Loop    
    ret
;	........................Count Remaining Digits......................

CountDigits9:
	pusha
    xor bx, bx                      
    
    mov byte [Grid9x9DigitsCOunt], 39h  
    mov byte [Grid9x9DigitsCOunt + 1], 39h  
    mov byte [Grid9x9DigitsCOunt + 2], 39h  
    mov byte [Grid9x9DigitsCOunt + 3], 39h  
    mov byte [Grid9x9DigitsCOunt + 4], 39h  
    mov byte [Grid9x9DigitsCOunt + 5], 39h  
    mov byte [Grid9x9DigitsCOunt + 6], 39h  
    mov byte [Grid9x9DigitsCOunt + 7], 39h  
    mov byte [Grid9x9DigitsCOunt + 8], 39h  

countloop:
    mov al, [Array9x9 + bx]
    cmp al, 31h                  
    je dec1
    cmp al, 32h                  
    je dec2
    cmp al, 33h                  
    je dec3
    cmp al, 34h                  
    je dec4
    cmp al, 35h                  
    je dec5
    cmp al, 36h                  
    je dec6
    cmp al, 37h                  
    je dec7
    cmp al, 38h                  
    je dec8
	cmp al, 39h                  
    je dec9
    jmp nextelement

dec1:
    dec byte [Grid9x9DigitsCOunt]       
    jmp nextelement

dec2:
    dec byte [Grid9x9DigitsCOunt + 1]   
    jmp nextelement

dec3:
    dec byte [Grid9x9DigitsCOunt + 2]   
    jmp nextelement

dec4:
    dec byte [Grid9x9DigitsCOunt + 3]   
    jmp nextelement

dec5:
    dec byte [Grid9x9DigitsCOunt + 4]       
    jmp nextelement

dec6:
    dec byte [Grid9x9DigitsCOunt + 5]   
    jmp nextelement

dec7:
    dec byte [Grid9x9DigitsCOunt + 6]   
    jmp nextelement

dec8:
    dec byte [Grid9x9DigitsCOunt + 7]   
    jmp nextelement
	
dec9:
    dec byte [Grid9x9DigitsCOunt + 8]   
    jmp nextelement

nextelement:
    inc bx                         

    cmp bx, 81
    jl countloop  	
    popa 
    ret 

CountDigits:
	pusha
    xor bx, bx                      
    
    mov byte [Grid4x4DigitsCount], 34h  
    mov byte [Grid4x4DigitsCount + 1], 34h  
    mov byte [Grid4x4DigitsCount + 2], 34h  
    mov byte [Grid4x4DigitsCount + 3], 34h  

count_loop:
    mov al, [Array4x4 + bx]

    cmp al, 31h                  
    je dec_1

    cmp al, 32h                  
    je dec_2

    cmp al, 33h                  
    je dec_3

    cmp al, 34h                  
    je dec_4

    jmp next_element

dec_1:
    dec byte [Grid4x4DigitsCount]       
    jmp next_element

dec_2:
    dec byte [Grid4x4DigitsCount + 1]   
    jmp next_element

dec_3:
    dec byte [Grid4x4DigitsCount + 2]   
    jmp next_element

dec_4:
    dec byte [Grid4x4DigitsCount + 3]   
    jmp next_element

next_element:
    inc bx                         

    cmp bx, 16
    jl count_loop  	
    popa 
    ret                      

	
DrawVertical:
	pusha 
	push es 
	mov ax , 0xB800
	mov es , ax 
	mov cx , 17
	mov ah , byte[color]
	mov al , 0x7C
Line2:
	mov [es:di] , ax
	add di , 160
	dec cx
	cmp cx , 0 
	jne Line2
	pop es 
	popa 
	ret
DrawHorizontal:
	pusha 
	push es 
	mov ax , 0xB800
	mov es , ax 
	mov cx , 49
	mov ah , byte[color]
	mov al , 0x2D
Line1:
	mov [es:di] , ax
	add di , 2 
	dec cx
	cmp cx , 0 
	jne Line1
	pop es 
	popa 
	ret
StringBox: 	
	pusha 

    mov ax, bx           
    mov dx, 80            
    mul dx               
    shl ax, 1             
    mov di, ax            

    mov dx ,cx           
    shl dx, 1          
    add di, dx    
    mov si, StrBtnTop
    call PrintString
	add di, 80 * 2
	mov si, StrBtnSide
    call PrintString
	add di, 80 * 2
	mov si, StrBtnBottom 
    call PrintString
	mov byte[color] , 0x07
	sub di, 80 * 2
	add di , 4 
	mov si, bp 
    call PrintString
	
	popa 
	ret 
	
PrintGridBox1:
    pusha           
    push es              

    mov ax, 0xB800
    mov es, ax

    mov ax, bx            
    mov dx, 80            
    mul dx               
    shl ax, 1             
    mov di, ax            

    mov ax, cx            
    shl ax, 1             
    add di, ax  
	mov ah , 24h
    mov [es:di], ax 
    mov cx, 3
	mov ah , [color]
    mov al, 0x20

BoxOutLoop1:
    mov dx, 7       
BoxInLoop1:
    mov [es:di], ax 
	add di , 2
    dec dx  
	cmp dx , 0
    jnz BoxInLoop1
	add di , 146
    dec cx  
	cmp cx , 0
    jnz BoxOutLoop1  

	mov al,[Array4x4 + si]
    mov ah, [color]	
    mov [es:di - 314 ], ax
    pop es                 
    popa                  
    ret
PrintGridBox:
    pusha           
    push es              

    mov ax, 0xB800
    mov es, ax

    mov ax, bx            
    mov dx, 80            
    mul dx               
    shl ax, 1             
    mov di, ax            

    mov ax, cx            
    shl ax, 1             
    add di, ax  
	mov ah , 24h
    mov [es:di], ax 
    mov cx, 3 
	mov ah , [color]
    mov al, 0x20

BoxOutLoop:
    mov bx, 5           
BoxInLoop:
    mov [es:di], ax 
	add di , 2
    dec bx  
	cmp bx , 0
    jnz BoxInLoop
	add di , 150
    dec cx  
	cmp cx , 0
    jnz BoxOutLoop  

	mov al,[Array9x9 + si]
    mov ah, [color]	
    mov [es:di - 316], ax
    pop es                 
    popa                  
    ret

ToggleColors:
    pusha                   

    mov al, [color]       
    mov bl, [GridColors]    

    cmp al, bl
    je toggle2second      

    mov al, bl
    jmp updateColor

toggle2second:
    mov al, [GridColors + 1]

updateColor:
    mov [color], al      
    popa                  
    ret
;	.......................Making Lvls......................

EasyLvl4x4:
    lea si, Array4x4
    mov byte [si], 31h
    mov byte [si+1], 20h
    mov byte [si+2], 32h
    mov byte [si+3], 20h
    mov byte [si+4], 20h
    mov byte [si+5], 33h
    mov byte [si+6], 20h
    mov byte [si+7], 34h
    mov byte [si+8], 34h
    mov byte [si+9], 20h
    mov byte [si+10], 20h
    mov byte [si+11], 31h
    mov byte [si+12], 20h
    mov byte [si+13], 31h
    mov byte [si+14], 20h
    mov byte [si+15], 32h
    ret
	
MediumLvl4x4:
    lea si, Array4x4
    mov byte [si], 20h
    mov byte [si+1], 20h
    mov byte [si+2], 20h
    mov byte [si+3], 34h
    mov byte [si+4], 34h
    mov byte [si+5], 20h
    mov byte [si+6], 33h
    mov byte [si+7], 20h
    mov byte [si+8], 20h
    mov byte [si+9], 34h
    mov byte [si+10], 20h
    mov byte [si+11], 33h
    mov byte [si+12], 20h
    mov byte [si+13], 31h
    mov byte [si+14], 20h
    mov byte [si+15], 20h
    ret
	
HardLvl4x4:
    lea si, Array4x4
    mov byte [si], 20h
    mov byte [si+1], 20h
    mov byte [si+2], 20h
    mov byte [si+3], 20h
    mov byte [si+4], 20h
    mov byte [si+5], 20h
    mov byte [si+6], 34h
    mov byte [si+7], 33h
    mov byte [si+8], 20h
    mov byte [si+9], 32h
    mov byte [si+10], 20h
    mov byte [si+11], 20h
    mov byte [si+12], 20h
    mov byte [si+13], 20h
    mov byte [si+14], 33h
    mov byte [si+15], 20h
    ret
	
EasyLvl9x9:
    pusha
    lea si, Array9x9

    mov byte [si], 20h
    mov byte [si + 1], 38h
    mov byte [si + 2], 32h
    mov byte [si + 3], 34h
    mov byte [si + 4], 37h
    mov byte [si + 5], 35h
    mov byte [si + 6], 31h
    mov byte [si + 7], 33h
    mov byte [si + 8], 20h


    mov byte [si + 9], 39h
    mov byte [si + 10], 37h
    mov byte [si + 11], 20h
    mov byte [si + 12], 20h
    mov byte [si + 13], 33h
    mov byte [si + 14], 20h
    mov byte [si + 15], 38h
    mov byte [si + 16], 20h
    mov byte [si + 17], 20h


    mov byte [si + 18], 33h
    mov byte [si + 19], 31h
    mov byte [si + 20], 35h
    mov byte [si + 21], 32h
    mov byte [si + 22], 20h
    mov byte [si + 23], 38h
    mov byte [si + 24], 20h
    mov byte [si + 25], 20h
    mov byte [si + 26], 20h

    mov byte [si + 27], 31h
    mov byte [si + 28], 36h
    mov byte [si + 29], 33h
    mov byte [si + 30], 20h
    mov byte [si + 31], 20h
    mov byte [si + 32], 20h
    mov byte [si + 33], 20h
    mov byte [si + 34], 20h
    mov byte [si + 35], 38h

    mov byte [si + 36], 34h
    mov byte [si + 37], 39h
    mov byte [si + 38], 37h
    mov byte [si + 39], 38h
    mov byte [si + 40], 31h
    mov byte [si + 41], 32h
    mov byte [si + 42], 33h
    mov byte [si + 43], 20h
    mov byte [si + 44], 20h

    mov byte [si + 45], 20h
    mov byte [si + 46], 20h
    mov byte [si + 47], 20h
    mov byte [si + 48], 39h
    mov byte [si + 49], 36h
    mov byte [si + 50], 33h
    mov byte [si + 51], 37h
    mov byte [si + 52], 20h
    mov byte [si + 53], 20h

    mov byte [si + 54], 20h
    mov byte [si + 55], 20h
    mov byte [si + 56], 36h
    mov byte [si + 57], 31h
    mov byte [si + 58], 34h
    mov byte [si + 59], 39h
    mov byte [si + 60], 35h
    mov byte [si + 61], 37h
    mov byte [si + 62], 33h

    mov byte [si + 63], 35h
    mov byte [si + 64], 20h
    mov byte [si + 65], 20h
    mov byte [si + 66], 20h
    mov byte [si + 67], 38h
    mov byte [si + 68], 37h
    mov byte [si + 69], 39h
    mov byte [si + 70], 36h
    mov byte [si + 71], 32h

    mov byte [si + 72], 37h
    mov byte [si + 73], 33h
    mov byte [si + 74], 39h
    mov byte [si + 75], 35h
    mov byte [si + 76], 32h
    mov byte [si + 77], 36h
    mov byte [si + 78], 34h
    mov byte [si + 79], 20h
    mov byte [si + 80], 20h

    popa
    ret

MediumLvl9x9:
    pusha
    lea si, Array9x9
    
    mov byte [si], 20h
    mov byte [si + 1], 38h
    mov byte [si + 2], 20h
    mov byte [si + 3], 20h
    mov byte [si + 4], 35h
    mov byte [si + 5], 32h
    mov byte [si + 6], 37h
    mov byte [si + 7], 31h
    mov byte [si + 8], 34h

    mov byte [si + 9], 37h
    mov byte [si + 10], 35h
    mov byte [si + 11], 32h
    mov byte [si + 12], 36h
    mov byte [si + 13], 34h
    mov byte [si + 14], 20h
    mov byte [si + 15], 38h
    mov byte [si + 16], 20h
    mov byte [si + 17], 39h

    mov byte [si + 18], 31h
    mov byte [si + 19], 33h
    mov byte [si + 20], 20h
    mov byte [si + 21], 20h
    mov byte [si + 22], 20h
    mov byte [si + 23], 38h
    mov byte [si + 24], 35h
    mov byte [si + 25], 20h
    mov byte [si + 26], 20h

    mov byte [si + 27], 34h
    mov byte [si + 28], 39h
    mov byte [si + 29], 20h
    mov byte [si + 30], 35h
    mov byte [si + 31], 20h
    mov byte [si + 32], 37h
    mov byte [si + 33], 20h
    mov byte [si + 34], 20h
    mov byte [si + 35], 20h

    mov byte [si + 36], 20h
    mov byte [si + 37], 20h
    mov byte [si + 38], 20h
    mov byte [si + 39], 20h
    mov byte [si + 40], 20h
    mov byte [si + 41], 20h
    mov byte [si + 42], 39h
    mov byte [si + 43], 20h
    mov byte [si + 44], 36h

    mov byte [si + 45], 32h
    mov byte [si + 46], 36h
    mov byte [si + 47], 37h
    mov byte [si + 48], 39h
    mov byte [si + 49], 31h
    mov byte [si + 50], 20h
    mov byte [si + 51], 20h
    mov byte [si + 52], 20h
    mov byte [si + 53], 38h

    mov byte [si + 54], 35h
    mov byte [si + 55], 32h
    mov byte [si + 56], 20h
    mov byte [si + 57], 38h
    mov byte [si + 58], 20h
    mov byte [si + 59], 39h
    mov byte [si + 60], 36h
    mov byte [si + 61], 20h
    mov byte [si + 62], 20h

    mov byte [si + 63], 20h
    mov byte [si + 64], 37h
    mov byte [si + 65], 36h
    mov byte [si + 66], 20h
    mov byte [si + 67], 32h
    mov byte [si + 68], 20h
    mov byte [si + 69], 33h
    mov byte [si + 70], 39h
    mov byte [si + 71], 20h

    mov byte [si + 72], 39h
    mov byte [si + 73], 34h
    mov byte [si + 74], 33h
    mov byte [si + 75], 20h
    mov byte [si + 76], 37h
    mov byte [si + 77], 36h
    mov byte [si + 78], 20h
    mov byte [si + 79], 38h
    mov byte [si + 80], 35h

    popa
    ret
	
HardLvl9x9:
    pusha
    lea si, Array9x9

    mov byte [si], 20h
    mov byte [si + 1], 20h
    mov byte [si + 2], 38h
    mov byte [si + 3], 20h
    mov byte [si + 4], 20h
    mov byte [si + 5], 20h
    mov byte [si + 6], 20h
    mov byte [si + 7], 20h
    mov byte [si + 8], 20h

    mov byte [si + 9], 20h
    mov byte [si + 10], 20h
    mov byte [si + 11], 20h
    mov byte [si + 12], 37h
    mov byte [si + 13], 20h
    mov byte [si + 14], 35h
    mov byte [si + 15], 20h
    mov byte [si + 16], 20h
    mov byte [si + 17], 20h

    mov byte [si + 18], 20h
    mov byte [si + 19], 20h
    mov byte [si + 20], 20h
    mov byte [si + 21], 20h
    mov byte [si + 22], 31h
    mov byte [si + 23], 20h
    mov byte [si + 24], 20h
    mov byte [si + 25], 20h

    mov byte [si + 26], 20h
    mov byte [si + 27], 20h
    mov byte [si + 28], 33h
    mov byte [si + 29], 20h
    mov byte [si + 30], 20h
    mov byte [si + 31], 20h
    mov byte [si + 32], 32h
    mov byte [si + 33], 20h

    mov byte [si + 34], 20h
    mov byte [si + 35], 20h
    mov byte [si + 36], 20h
    mov byte [si + 37], 20h
    mov byte [si + 38], 20h
    mov byte [si + 39], 20h
    mov byte [si + 40], 34h
    mov byte [si + 41], 20h

    mov byte [si + 42], 20h
    mov byte [si + 43], 20h
    mov byte [si + 44], 38h
    mov byte [si + 45], 20h
    mov byte [si + 46], 20h
    mov byte [si + 47], 20h
    mov byte [si + 48], 20h
    mov byte [si + 49], 35h

    mov byte [si + 50], 20h
    mov byte [si + 51], 20h
    mov byte [si + 52], 20h
    mov byte [si + 53], 20h
    mov byte [si + 54], 31h
    mov byte [si + 55], 20h
    mov byte [si + 56], 20h
    mov byte [si + 57], 20h

    mov byte [si + 58], 20h
    mov byte [si + 59], 37h
    mov byte [si + 60], 20h
    mov byte [si + 61], 20h
    mov byte [si + 62], 20h
    mov byte [si + 63], 20h
    mov byte [si + 64], 20h

    mov byte [si + 65], 20h
    mov byte [si + 66], 32h
    mov byte [si + 67], 20h
    mov byte [si + 68], 20h
    mov byte [si + 69], 33h
    mov byte [si + 70], 20h
    mov byte [si + 71], 20h

    mov byte [si + 72], 20h
    mov byte [si + 73], 38h
    mov byte [si + 74], 20h
    mov byte [si + 75], 34h
    mov byte [si + 76], 20h
    mov byte [si + 77], 39h
    mov byte [si + 78], 20h
    mov byte [si + 79], 20h

    popa
	ret
	
	;	........................Printing 9x9 Notes......................

PrintNotes9x9:
    pusha           
    push es              

    mov ax, 0xB800
    mov es, ax

    mov ax, bx            
    mov dx, 80            
    mul dx               
    shl ax, 1             
    mov di, ax            

    mov ax, cx            
    shl ax, 1             
    add di, ax 
	mov ax , si 
	shl si , 3
	add si , ax
	mov ah , [color]
	mov al , [Notes9x9 + si]
	mov [es:di] , ax 
	add di , 4
	mov al , [Notes9x9 + si + 1]
	mov [es:di] , ax 
	add di , 4
	mov al , [Notes9x9 + si + 2]
	mov [es:di] , ax
	add di , 152
	mov al , [Notes9x9 + si + 3]
	mov [es:di] , ax 
	add di , 8 
	mov al , [Notes9x9 + si + 5]
	mov [es:di] , ax 
	add di , 152
	mov al , [Notes9x9 + si + 6]
	mov [es:di] , ax 
	add di , 4
	mov al , [Notes9x9 + si + 7]
	mov [es:di] , ax 
	add di , 4
	mov al , [Notes9x9 + si + 8]
	mov [es:di] , ax
	pop es
	popa 
	ret

;	........................Grid 9x9 (Advance Level)......................
Grid9x9: 
	call CheckForVictory9x9
	call PlayCompletionSound9x9
	mov byte[color] , 0x07
    mov di, (1 * 80 * 2) + (2 * 2) 
	mov si , MistakeString
	call PrintString
	
	mov byte[color] , 0x07
	mov bx , 0
	mov cx , 11
	mov si , [MistakeCount]
	call PrintNumber
	
	mov byte[color] , 0x07
    mov di, (1 * 80 * 2) + (65 * 2) 
	mov si , TimerString
	call PrintString
	
	mov bx , 4
	mov cx , 2 
	mov byte[color] , 0x06
	mov bp , MenuString
	call StringBox
	
	mov bx , 7
	mov cx , 2 
	mov byte[color] , 0x06
	mov bp , UndoString
	call StringBox
	
	mov bx , 10
	mov cx , 2 
	mov byte[color] , 0x06
	mov bp , NotesString
	call StringBox
	
	mov bx ,13
	mov cx , 2 
	mov byte[color] , 0x06
	mov bp , ButtonsString
	call StringBox

	mov bx ,16
	mov cx , 2
	mov byte[color] , 0x06
	mov bp , QuitString
	call StringBox
	
    mov si, Level2 
    mov di, (1 * 80 * 2) + (34	* 2) 
	mov byte[color] , 0x06
    call PrintString
	
	mov di , (23*80*2) + (3*2)
	mov byte[color] , 0x07
	mov si , Remaining9x9Digits
	call PrintString

	call CountDigits9
	mov bp , 0
	mov bx , 22
	mov cx , 15 

RemainingLoop: 
	mov byte[color] , 0x07
	mov si , [Grid9x9DigitsCOunt + bp]
	call PrintNumber
	add cx , 6 
	inc bp 
	cmp bp , 9
	jnz RemainingLoop
	
	mov dx , 9
	mov bx , 20
	mov cx , 15 
	mov si , 49
BtnLoop1:
	mov byte[color] , 0x06
	call Button 
	mov byte[color] , 0x07
	call PrintNumber
	add cx , 6 
	add si , 1
	dec dx 
	cmp dx , 0
	jnz BtnLoop1
	
	cmp byte[NotesMode] , 1
	je HighlightNotes1
	BacktoGrid9x9:
	cmp byte[GridSelected9x9] , 44 
	jle Grid9x9Page1
	cmp byte[GridSelected9x9] , 44 
	jg Grid9x9Page2
AdvBtnSelection:
	cmp byte [SelectedButton], 31h
    je BtnAdv1
    cmp byte [SelectedButton], 32h
    je BtnAdv2
	cmp byte [SelectedButton], 33h
    je BtnAdv3
    cmp byte [SelectedButton], 34h
    je BtnAdv4
	cmp byte [SelectedButton], 35h
    je BtnAdv5
    cmp byte [SelectedButton], 36h
    je BtnAdv6
	cmp byte [SelectedButton], 37h
    je BtnAdv7
    cmp byte [SelectedButton], 38h
    je BtnAdv8
	cmp byte [SelectedButton], 39h
    je BtnAdv9
	ret 

Grid9x9Page1:
	mov byte[GridColors] , 0x76
	mov byte[GridColors + 1] , 0x67
	mov bx, 3           
	mov dh , 5
	mov si , 0
	call ToggleColors
	
GridOuter:
	mov dl, 8
	mov cx, 19	
GirdInner:
	call PrintGridBox
	call PrintNotes9x9
	add cx, 5
	inc si 
	cmp dl, 6
	jne addSpace1
	add cx, 1  
addSpace1:
	cmp dl, 3
	je addSpace2
	jmp skipAddSpace2
addSpace2:
	add cx, 1 
skipAddSpace2:
	call ToggleColors
	call PrintGridBox
	call PrintNotes9x9
	dec dl 
	cmp dl, 0
	jnz GirdInner
	call ToggleColors
	inc si 
	cmp dh, 3
	jne addSpace
	add bx, 1 
addSpace:
	add bx, 3
	dec dh
	cmp dh, 0
	jnz GridOuter

	mov byte[color] ,  0x06
	mov di , (2*160) + (18*2)
	call DrawHorizontal
	mov di , (12*160) + (18*2)
	call DrawHorizontal
	mov di , (2*160) + (18*2)
	call DrawVertical
	mov di , (2*160) + (34*2)
	call DrawVertical
	mov di , (2*160) + (50*2)
	call DrawVertical
	mov di , (2*160) + (66*2)
	call DrawVertical

    cmp byte [GridSelected9x9], 0
    je AdvBox01
    cmp byte [GridSelected9x9], 1
    je AdvBox02
    cmp byte [GridSelected9x9], 2
    je AdvBox03
    cmp byte [GridSelected9x9], 3
    je AdvBox04
    cmp byte [GridSelected9x9], 4
    je AdvBox05
    cmp byte [GridSelected9x9], 5
    je AdvBox06
    cmp byte [GridSelected9x9], 6
    je AdvBox07
    cmp byte [GridSelected9x9], 7
    je AdvBox08
    cmp byte [GridSelected9x9], 8
    je AdvBox09
    cmp byte [GridSelected9x9], 9
    je AdvBox11
    cmp byte [GridSelected9x9], 10
    je AdvBox12
    cmp byte [GridSelected9x9], 11
    je AdvBox13
    cmp byte [GridSelected9x9], 12
    je AdvBox14
    cmp byte [GridSelected9x9], 13
    je AdvBox15
    cmp byte [GridSelected9x9], 14
    je AdvBox16
    cmp byte [GridSelected9x9], 15
    je AdvBox17
    cmp byte [GridSelected9x9], 16
    je AdvBox18
    cmp byte [GridSelected9x9], 17
    je AdvBox19
    cmp byte [GridSelected9x9], 18
    je AdvBox21
    cmp byte [GridSelected9x9], 19
    je AdvBox22
    cmp byte [GridSelected9x9], 20
    je AdvBox23
    cmp byte [GridSelected9x9], 21
    je AdvBox24
    cmp byte [GridSelected9x9], 22
    je AdvBox25
    cmp byte [GridSelected9x9], 23
    je AdvBox26
    cmp byte [GridSelected9x9], 24
    je AdvBox27
    cmp byte [GridSelected9x9], 25
    je AdvBox28
    cmp byte [GridSelected9x9], 26
    je AdvBox29
    cmp byte [GridSelected9x9], 27
    je AdvBox31
    cmp byte [GridSelected9x9], 28
    je AdvBox32
    cmp byte [GridSelected9x9], 29
    je AdvBox33
    cmp byte [GridSelected9x9], 30
    je AdvBox34
    cmp byte [GridSelected9x9], 31
    je AdvBox35
    cmp byte [GridSelected9x9], 32
    je AdvBox36
    cmp byte [GridSelected9x9], 33
    je AdvBox37
    cmp byte [GridSelected9x9], 34
    je AdvBox38
    cmp byte [GridSelected9x9], 35
    je AdvBox39
    cmp byte [GridSelected9x9], 36
    je AdvBox41
    cmp byte [GridSelected9x9], 37
    je AdvBox42
    cmp byte [GridSelected9x9], 38
    je AdvBox43
    cmp byte [GridSelected9x9], 39
    je AdvBox44
    cmp byte [GridSelected9x9], 40
    je AdvBox45
    cmp byte [GridSelected9x9], 41
    je AdvBox46
    cmp byte [GridSelected9x9], 42
    je AdvBox47
    cmp byte [GridSelected9x9], 43
    je AdvBox48
    cmp byte [GridSelected9x9], 44
    je AdvBox49

	call getInput
	ret 

Grid9x9Page2: 
	mov byte[GridColors] , 0x76
	mov byte[GridColors + 1] , 0x67
	mov bx, 5         
	mov dh , 4
	mov si , 45
	call ToggleColors
	
GridOuter2:
	mov dl, 8
	mov cx, 19
GirdInner2:
	call PrintGridBox
	call PrintNotes9x9
	add cx, 5
	inc si 
	cmp dl, 6
	jne addSpace4
	add cx, 1  
addSpace4:
	cmp dl, 3
	je addSpace3
	jmp skipAddSpace3

addSpace3:
	add cx, 1  
skipAddSpace3:
	call ToggleColors
	call PrintGridBox
	call PrintNotes9x9
	dec dl 
	cmp dl, 0
	jnz GirdInner2

	call ToggleColors
	inc si 
	cmp dh, 4
	jne addSpace0
	add bx, 1 
addSpace0:
	add bx, 3
	dec dh
	cmp dh, 0
	jnz GridOuter2
	
	mov byte[color] ,  0x06
	mov di , (18*160) + (18*2)
	call DrawHorizontal
	mov di , (8*160) + (18*2)
	call DrawHorizontal
	mov di , (2*160) + (18*2)
	call DrawVertical
	mov di , (2*160) + (34*2)
	call DrawVertical
	mov di , (2*160) + (50*2)
	call DrawVertical
	mov di , (2*160) + (66*2)
	call DrawVertical
	

	mov byte[color] ,  0x00
	mov di , (2*160) + (18*2)
	call DrawHorizontal
	mov di , (3*160) + (18*2)
	call DrawHorizontal
	mov di , (4*160) + (18*2)
	call DrawHorizontal
	
	cmp byte [GridSelected9x9], 45
    je AdvBox51
    cmp byte [GridSelected9x9], 46
    je AdvBox52
    cmp byte [GridSelected9x9], 47
    je AdvBox53
    cmp byte [GridSelected9x9], 48
    je AdvBox54
    cmp byte [GridSelected9x9], 49
    je AdvBox55
    cmp byte [GridSelected9x9], 50
    je AdvBox56
    cmp byte [GridSelected9x9], 51
    je AdvBox57
    cmp byte [GridSelected9x9], 52
    je AdvBox58
    cmp byte [GridSelected9x9], 53
    je AdvBox59
    cmp byte [GridSelected9x9], 54
    je AdvBox61
    cmp byte [GridSelected9x9], 55
    je AdvBox62
    cmp byte [GridSelected9x9], 56
    je AdvBox63
    cmp byte [GridSelected9x9], 57
    je AdvBox64
    cmp byte [GridSelected9x9], 58
    je AdvBox65
    cmp byte [GridSelected9x9], 59
    je AdvBox66
    cmp byte [GridSelected9x9], 60
    je AdvBox67
    cmp byte [GridSelected9x9], 61
    je AdvBox68
    cmp byte [GridSelected9x9], 62
    je AdvBox69
    cmp byte [GridSelected9x9], 63
    je AdvBox71
    cmp byte [GridSelected9x9], 64
    je AdvBox72
    cmp byte [GridSelected9x9], 65
    je AdvBox73
    cmp byte [GridSelected9x9], 66
    je AdvBox74
    cmp byte [GridSelected9x9], 67
    je AdvBox75
    cmp byte [GridSelected9x9], 68
    je AdvBox76
    cmp byte [GridSelected9x9], 69
    je AdvBox77
    cmp byte [GridSelected9x9], 70
    je AdvBox78
    cmp byte [GridSelected9x9], 71
    je AdvBox79
    cmp byte [GridSelected9x9], 72
    je AdvBox81
    cmp byte [GridSelected9x9], 73
    je AdvBox82
    cmp byte [GridSelected9x9], 74
    je AdvBox83
    cmp byte [GridSelected9x9], 75
    je AdvBox84
    cmp byte [GridSelected9x9], 76
    je AdvBox85
    cmp byte [GridSelected9x9], 77
    je AdvBox86
    cmp byte [GridSelected9x9], 78
    je AdvBox87
    cmp byte [GridSelected9x9], 79
    je AdvBox88
    cmp byte [GridSelected9x9], 80
    je AdvBox89

	call AdvLvlInput
	ret 
	
HighlightNotes1:
	mov bx , 10
	mov cx , 2 
	mov byte[color] , 0x87
	mov bp , NotesString
	call StringBox
	jmp BacktoGrid9x9
	
CheckForVictory9x9:
    lea si, Array9x9
    mov cx, 81

CheckNextElement9x9:
    mov al, [si]
    cmp al, 20h
    je GameNotOver9x9
    inc si
    loop CheckNextElement9x9

    jmp WinGamePage

GameNotOver9x9:
    ret

Sudoku9x9SubGridCheck:
	pusha 
    mov bp, si
    mov si, Array9x9       
    call CheckSubgrid_3x3   

    mov si, Array9x9 + 3    
    call CheckSubgrid_3x3

    mov si, Array9x9 + 6   
    call CheckSubgrid_3x3

    mov si, Array9x9 + 27   
    call CheckSubgrid_3x3

    mov si, Array9x9 + 30  
    call CheckSubgrid_3x3

    mov si, Array9x9 + 33  
    call CheckSubgrid_3x3

    mov si, Array9x9 + 54   
    call CheckSubgrid_3x3

    mov si, Array9x9 + 57 
    call CheckSubgrid_3x3

    mov si, Array9x9 + 60  
    call CheckSubgrid_3x3
	popa 
    ret

CheckSubgrid_3x3:
	pusha 
    mov al, [si]       
    mov bl, [si+1]     
    mov cl, [si+2]  
    mov dl, [si+9]   
    mov ah, [si+10]   
    mov bh, [si+11]   
    mov ch, [si+18]   
    mov dh, [si+19]    

    cmp al, 20h
    je SkipValueAL
    cmp [si+20], al
    je SubDuplicateFound1
    cmp bl, 20h
    je SkipValueBL
    cmp [si+20], bl
    je SubDuplicateFound1
    cmp cl, 20h
    je SkipValueCL
    cmp [si+20], cl
    je SubDuplicateFound1
    cmp dl, 20h
    je SkipValueDL
    cmp [si+20], dl
    je SubDuplicateFound1
    cmp ah, 20h
    je SkipValueAH
    cmp [si+20], ah
    je SubDuplicateFound1
    cmp bh, 20h
    je SkipValueBH
    cmp [si+20], bh
    je SubDuplicateFound1
    cmp ch, 20h
    je SkipValueCH
    cmp [si+20], ch
    je SubDuplicateFound1
    cmp dh, 20h
    je SkipValueDH
    cmp [si+20], dh
    je SubDuplicateFound1

SkipValueAL:
    cmp bl, 20h
    je SkipValueBL
    cmp cl, bl
    je SubDuplicateFound1
    cmp dl, bl
    je SubDuplicateFound1
    cmp ah, bl
    je SubDuplicateFound1
    cmp bh, bl
    je SubDuplicateFound1
    cmp ch, bl
    je SubDuplicateFound1
    cmp dh, bl
    je SubDuplicateFound1
    cmp [si+20], bl
    je SubDuplicateFound1

SkipValueBL:
    cmp cl, 20h
    je SkipValueCL
    cmp dl, cl
    je SubDuplicateFound1
    cmp ah, cl
    je SubDuplicateFound1
    cmp bh, cl
    je SubDuplicateFound1
    cmp ch, cl
    je SubDuplicateFound1
    cmp dh, cl
    je SubDuplicateFound1
    cmp [si+20], cl
    je SubDuplicateFound1

SkipValueCL:
    cmp dl, 20h
    je SkipValueDL
    cmp ah, dl
    je SubDuplicateFound1
    cmp bh, dl
    je SubDuplicateFound1
    cmp ch, dl
    je SubDuplicateFound1
    cmp dh, dl
    je SubDuplicateFound1
    cmp [si+20], dl
    je SubDuplicateFound1

SkipValueDL:
    cmp ah, 20h
    je SkipValueAH
    cmp bh, ah
    je SubDuplicateFound1
    cmp ch, ah
    je SubDuplicateFound1
    cmp dh, ah
    je SubDuplicateFound1
    cmp [si+20], ah
    je SubDuplicateFound1

SkipValueAH:
    cmp bh, 20h
    je SkipValueBH
    cmp ch, bh
    je SubDuplicateFound1
    cmp dh, bh
    je SubDuplicateFound1
    cmp [si+20], bh
    je SubDuplicateFound1

SkipValueBH:
    cmp ch, 20h
    je SkipValueCH
    cmp dh, ch
    je SubDuplicateFound1
    cmp [si+20], ch
    je SubDuplicateFound1

SkipValueCH:
    cmp dh, 20h
    je SkipValueDH
    cmp [si+20], dh
    je SubDuplicateFound1

SkipValueDH:
    cmp byte[si+20], 20h
    je SkipValueDL2 
	jmp SkipValueDL2 
	
SubDuplicateFound1:
    mov byte [Array9x9 + bp], 20h
    inc byte [MistakeCount]
	sub word[Array9x9Score] , 30  
    call PlayLosingMelody
    call StopSound
    jmp SkipValueDL2

SkipValueDL2:
	popa
    ret
	
	
PlayCompletionSound9x9:
    lea si, Array9x9         
    lea di, CompletedFlags9x9

CheckRow1_9x9:
    mov cx, 0                
    lea si, Array9x9         
    cmp byte [CompletedFlags9x9], 1
    je SkipRow1_9x9

    lea si, Array9x9         
    mov bx, 0                
CheckElementRow1_9x9:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow1_9x9    
    add si, 1                
    cmp si, Array9x9 + 9    
    je LineCompletedRow1_9x9
    jmp CheckElementRow1_9x9

FoundSpaceRow1_9x9:
    mov bx, 1                
    jmp SkipRow1_9x9        

LineCompletedRow1_9x9:
    mov byte [CompletedFlags9x9], 1
    inc byte [CompletedLines9x9]
	cmp byte[AudioMuted] , 1 
	je SkipRow1_9x9
    call PlayLineCompletion
    call StopSound          

SkipRow1_9x9:
    lea si, Array9x9 + 9    
    cmp byte [CompletedFlags9x9 + 1], 1
    je SkipRow2_9x9

    mov bx, 0
CheckElementRow2_9x9:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow2_9x9    
    add si, 1                
    cmp si, Array9x9 + 18   
    je LineCompletedRow2_9x9
    jmp CheckElementRow2_9x9

FoundSpaceRow2_9x9:
    mov bx, 1                
    jmp SkipRow2_9x9        

LineCompletedRow2_9x9:
    mov byte [CompletedFlags9x9 + 1], 1
    inc byte [CompletedLines9x9]
	cmp byte[AudioMuted] , 1 
	je SkipRow2_9x9
    call PlayLineCompletion
    call StopSound          

SkipRow2_9x9:
    lea si, Array9x9 + 18   
    cmp byte [CompletedFlags9x9 + 2], 1
    je SkipRow3_9x9

    mov bx, 0
CheckElementRow3_9x9:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow3_9x9    
    add si, 1                
    cmp si, Array9x9 + 27   
    je LineCompletedRow3_9x9
    jmp CheckElementRow3_9x9

FoundSpaceRow3_9x9:
    mov bx, 1                
    jmp SkipRow3_9x9        

LineCompletedRow3_9x9:
    mov byte [CompletedFlags9x9 + 2], 1
    inc byte [CompletedLines9x9]
	cmp byte[AudioMuted] , 1 
	je SkipRow3_9x9
    call PlayLineCompletion
    call StopSound          

SkipRow3_9x9:
    lea si, Array9x9 + 27   
    cmp byte [CompletedFlags9x9 + 3], 1
    je SkipRow4_9x9

    mov bx, 0
CheckElementRow4_9x9:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow4_9x9    
    add si, 1                
    cmp si, Array9x9 + 36   
    je LineCompletedRow4_9x9
    jmp CheckElementRow4_9x9

FoundSpaceRow4_9x9:
    mov bx, 1                
    jmp SkipRow4_9x9        

LineCompletedRow4_9x9:
    mov byte [CompletedFlags9x9 + 3], 1
    inc byte [CompletedLines9x9]
	cmp byte[AudioMuted] , 1 
	je SkipRow4_9x9
    call PlayLineCompletion
    call StopSound          

SkipRow4_9x9:
    lea si, Array9x9 + 36   
    cmp byte [CompletedFlags9x9 + 4], 1
    je SkipRow5_9x9

    mov bx, 0
CheckElementRow5_9x9:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow5_9x9    
    add si, 1                
    cmp si, Array9x9 + 45   
    je LineCompletedRow5_9x9
    jmp CheckElementRow5_9x9

FoundSpaceRow5_9x9:
    mov bx, 1                
    jmp SkipRow5_9x9        

LineCompletedRow5_9x9:
    mov byte [CompletedFlags9x9 + 4], 1
    inc byte [CompletedLines9x9]
	cmp byte[AudioMuted] , 1 
	je SkipRow5_9x9
    call PlayLineCompletion
    call StopSound          

SkipRow5_9x9:
    lea si, Array9x9 + 45   
    cmp byte [CompletedFlags9x9 + 5], 1
    je SkipRow6_9x9

    mov bx, 0
CheckElementRow6_9x9:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow6_9x9    
    add si, 1                
    cmp si, Array9x9 + 54   
    je LineCompletedRow6_9x9
    jmp CheckElementRow6_9x9

FoundSpaceRow6_9x9:
    mov bx, 1                
    jmp SkipRow6_9x9        

LineCompletedRow6_9x9:
    mov byte [CompletedFlags9x9 + 5], 1
    inc byte [CompletedLines9x9]
	cmp byte[AudioMuted] , 1 
	je SkipRow6_9x9
    call PlayLineCompletion
    call StopSound          

SkipRow6_9x9:
    lea si, Array9x9 + 54   
    cmp byte [CompletedFlags9x9 + 6], 1
    je SkipRow7_9x9

    mov bx, 0
CheckElementRow7_9x9:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow7_9x9    
    add si, 1                
    cmp si, Array9x9 + 63  	
    je LineCompletedRow7_9x9
    jmp CheckElementRow7_9x9

FoundSpaceRow7_9x9:
    mov bx, 1                
    jmp SkipRow7_9x9        

LineCompletedRow7_9x9:
    mov byte [CompletedFlags9x9 + 6], 1
    inc byte [CompletedLines9x9]
	cmp byte[AudioMuted] , 1 
	je SkipRow7_9x9
    call PlayLineCompletion
    call StopSound          

SkipRow7_9x9:
    lea si, Array9x9 + 63   
    cmp byte [CompletedFlags9x9 + 7], 1
    je SkipRow8_9x9

    mov bx, 0
CheckElementRow8_9x9:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow8_9x9    
    add si, 1                
    cmp si, Array9x9 + 72   
    je LineCompletedRow8_9x9
    jmp CheckElementRow8_9x9

FoundSpaceRow8_9x9:
    mov bx, 1                
    jmp SkipRow8_9x9        

LineCompletedRow8_9x9:
    mov byte [CompletedFlags9x9 + 7], 1
    inc byte [CompletedLines9x9]
	cmp byte[AudioMuted] , 1 
	je SkipRow8_9x9
    call PlayLineCompletion
    call StopSound          

SkipRow8_9x9:
    lea si, Array9x9 + 72   
    cmp byte [CompletedFlags9x9 + 8], 1
    je SkipRow9_9x9

    mov bx, 0
CheckElementRow9_9x9:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow9_9x9    
    add si, 1                
    cmp si, Array9x9 + 81   
    je LineCompletedRow9_9x9
    jmp CheckElementRow9_9x9

FoundSpaceRow9_9x9:
    mov bx, 1                
    jmp SkipRow9_9x9        

LineCompletedRow9_9x9:
    mov byte [CompletedFlags9x9 + 8], 1
    inc byte [CompletedLines9x9]
	cmp byte[AudioMuted] , 1 
	je SkipRow9_9x9
    call PlayLineCompletion
    call StopSound          

SkipRow9_9x9:
    ret

SodukoRowCheck9x9:
    pusha
    cmp byte [MistakeCount], 35h
    je LostGamePage
    mov bp, si                        
	mov ax, si         
	mov dx, 0           
	mov cx, 9           
	div cx   
    
    cmp ax, 0                            
    je Row0Check9x9
    cmp ax, 1                             
    je Row1Check9x9
    cmp ax, 2                             
    je Row2Check9x9
    cmp ax, 3                             
    je Row3Check9x9
    cmp ax, 4                             
    je Row4Check9x9
    cmp ax, 5                             
    je Row5Check9x9
    cmp ax, 6                             
    je Row6Check9x9
    cmp ax, 7                             
    je Row7Check9x9
    cmp ax, 8                             
    je Row8Check9x9

Row0Check9x9:
    lea bx, Array9x9
    jmp RowCheck9x9

Row1Check9x9:
    lea bx, Array9x9 + 9
    jmp RowCheck9x9

Row2Check9x9:
    lea bx, Array9x9 + 18
    jmp RowCheck9x9

Row3Check9x9:
    lea bx, Array9x9 + 27
    jmp RowCheck9x9

Row4Check9x9:
    lea bx, Array9x9 + 36
    jmp RowCheck9x9

Row5Check9x9:
    lea bx, Array9x9 + 45
    jmp RowCheck9x9

Row6Check9x9:
    lea bx, Array9x9 + 54
    jmp RowCheck9x9

Row7Check9x9:
    lea bx, Array9x9 + 63
    jmp RowCheck9x9

Row8Check9x9:
    lea bx, Array9x9 + 72
    jmp RowCheck9x9

RowCheck9x9:
    mov si, 0
RowOuterLoop9x9:
    mov di, si
    inc di

RowInnerLoop9x9:
    cmp di, 9                  
    je Check9x9RowDuplicate           
    mov al, [bx + si]          
    cmp al, [bx + di]           
    je RowDuplicateFound9x9            
    inc di                       
    jmp RowInnerLoop9x9    

Check9x9RowDuplicate:
    inc si
    cmp si, 9
    jb RowOuterLoop9x9
    jmp EndRowCheck9x9

RowDuplicateFound9x9:
    mov al, [bx + si]              
    cmp al, 20h                    
    je Check9x9RowDuplicate 
    mov byte [Array9x9 + bp], 20h   
    inc byte [MistakeCount] 
	sub word[Array9x9Score] , 30  
	call PlayLosingMelody
	call StopSound
    jmp Check9x9RowDuplicate 

EndRowCheck9x9:
    popa
    ret

SodukoColumnCheck9x9:
	pusha
    cmp byte [MistakeCount], 35h      
    je LostGamePage
    mov bp, si                        
	mov ax, si         
	mov dx, 0           
	mov cx, 9          
	div cx            
	
    cmp dx, 0                            
    je Column0Check9x9
    cmp dx, 1                             
    je Column1Check9x9
    cmp dx, 2                             
    je Column2Check9x9
    cmp dx, 3                            
    je Column3Check9x9
	cmp dx, 4                            
    je Column4Check9x9
	cmp dx, 5                           
    je Column5Check9x9
    cmp dx, 6                           
    je Column6Check9x9
    cmp dx, 7                            
    je Column7Check9x9
	cmp dx, 8                            
    je Column8Check9x9
	
Column0Check9x9:
    lea bx, Array9x9               
    jmp ColumnCheck9x9

Column1Check9x9:
    lea bx, Array9x9 + 1              
    jmp ColumnCheck9x9

Column2Check9x9:
    lea bx, Array9x9 + 2               
    jmp ColumnCheck9x9

Column3Check9x9:
    lea bx, Array9x9 + 3                
    jmp ColumnCheck9x9
	
Column4Check9x9:
    lea bx, Array9x9 + 4             
    jmp ColumnCheck9x9

Column5Check9x9:
    lea bx, Array9x9 + 5              
    jmp ColumnCheck9x9

Column6Check9x9:
    lea bx, Array9x9 + 6               
    jmp ColumnCheck9x9

Column7Check9x9:
    lea bx, Array9x9 + 7               
    jmp ColumnCheck9x9

Column8Check9x9:
    lea bx, Array9x9 + 8              
    jmp ColumnCheck9x9
	
ColumnCheck9x9:
    mov si, 0                          
ColOuterLoop9x9:
    mov di, si                          
    inc di                                

ColInnerLoop9x9:
    cmp di, 9                           
    je Check9x9ColDuplicate
	mov dx , si
	shl si ,3
	add si , dx
    mov al, [bx + si] 
	sub si , dx
	shr si ,3
	mov cx , di
	shl di ,3
	add di , cx
    mov dl, [bx + di] 
	sub di , cx
	shr di ,3
    cmp al, dl                           
    je ColDuplicateFound9x9                  
    inc di                            
    jmp ColInnerLoop9x9

Check9x9ColDuplicate:
    inc si                                
    cmp si, 9                            
    jb ColOuterLoop9x9                         
    jmp EndColCheck9x9                        

ColDuplicateFound9x9:
	mov dx , si
	shl si ,3
	add si , dx
    mov al, [bx + si]   
	sub si , dx
	shr si ,3
    cmp al, 20h                        
    je Check9x9ColDuplicate
    mov byte [Array9x9 + bp], 20h    
    inc byte [MistakeCount]
	sub word[Array9x9Score] , 30 
    call PlayLosingMelody                
    call StopSound                       
    jmp Check9x9ColDuplicate                  

EndColCheck9x9:
	popa 
    ret
	
Check9x9GridInput:
	mov byte[color] , 0xB6
	cmp byte[NotesMode] , 1
	je AddNotesToGrid9x9
	mov dl , byte[SelectedButton]
	mov byte[Array9x9 + si], dl	
	call PrintGridBox
	call SodukoRowCheck9x9
	call SodukoColumnCheck9x9
	call Sudoku9x9SubGridCheck
	cmp byte[Array9x9 + si] , 20h
	jne ClearTheNotes9x9
BacktoCheck9x9GridInput:
	jmp AdvBtnSelection
	
ClearTheNotes9x9:
	mov word[LastInput] , si
	call ClearNotes9x9
	jmp BacktoCheck9x9GridInput
	
AdvBox01:
	mov si , 0 
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 3  
	mov cx , 19
	jmp Check9x9GridInput

AdvBox02:
	mov si , 1
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 3
	mov cx , 24
	jmp Check9x9GridInput


AdvBox03:
	mov si , 2
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 3
	mov cx , 29
	jmp Check9x9GridInput

	
AdvBox04:
	mov si , 3
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 3 
	mov cx , 35
	jmp Check9x9GridInput


AdvBox05:
	mov si , 4
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 3 
	mov cx , 40
	jmp Check9x9GridInput


AdvBox06:
	mov si , 5
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 3 
	mov cx , 45
	jmp Check9x9GridInput


AdvBox07:
	mov si , 6
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 3
	mov cx , 51
	jmp Check9x9GridInput

AdvBox08:
	mov si , 7
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 3 
	mov cx , 56
	jmp Check9x9GridInput

AdvBox09:
	mov si , 8
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 3 
	mov cx , 61
	jmp Check9x9GridInput

AdvBox11:
	mov si , 9 
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 6
	mov cx , 19
	jmp Check9x9GridInput

AdvBox12:
	mov si , 10
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 6 
	mov cx , 24
	jmp Check9x9GridInput

AdvBox13:
	mov si , 11
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 6
	mov cx , 29
	jmp Check9x9GridInput


AdvBox14:
	mov si , 12
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 6
	mov cx , 35
	jmp Check9x9GridInput

AdvBox15:
	mov si , 13
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 6
	mov cx , 40
	jmp Check9x9GridInput

AdvBox16:
	mov si , 14
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 6 
	mov cx , 45
	jmp Check9x9GridInput

AdvBox17:
	mov si , 15
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 6 
	mov cx , 51
	jmp Check9x9GridInput

AdvBox18:
	mov si , 16
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 6
	mov cx , 56
	jmp Check9x9GridInput

AdvBox19:
	mov si , 17
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 6
	mov cx , 61
	jmp Check9x9GridInput

AdvBox21:
	mov si , 18
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 19
	jmp Check9x9GridInput

AdvBox22:
	mov si , 19
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 24
	jmp Check9x9GridInput

AdvBox23:
	mov si , 20
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 29
	jmp Check9x9GridInput

AdvBox24:
	mov si , 21
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 35
	jmp Check9x9GridInput

AdvBox25:
	mov si , 22
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 40
	jmp Check9x9GridInput

AdvBox26:
	mov si , 23
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 45
	jmp Check9x9GridInput

AdvBox27:
	mov si , 24
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 51
	jmp Check9x9GridInput

AdvBox28:
	mov si , 25
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 56
	jmp Check9x9GridInput

AdvBox29:
	mov si , 26
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 61
	jmp Check9x9GridInput

AdvBox31:
	mov si , 27
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 13 
	mov cx , 19
	jmp Check9x9GridInput
	
AdvBox32:
	mov si , 28
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 13 
	mov cx , 24
	jmp Check9x9GridInput
	
AdvBox33:
	mov si , 29
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 13
	mov cx , 29
	jmp Check9x9GridInput

AdvBox34:
	mov si , 30
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 13 
	mov cx , 35
	jmp Check9x9GridInput

AdvBox35:
	mov si , 31
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 13 
	mov cx , 40
	jmp Check9x9GridInput

AdvBox36:
	mov si , 32
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 13 
	mov cx , 45
	jmp Check9x9GridInput

AdvBox37:
	mov si , 33
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 13 
	mov cx , 51
	jmp Check9x9GridInput

AdvBox38:
	mov si , 34
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 13
	mov cx , 56
	jmp Check9x9GridInput
	
AdvBox39:
	mov si , 35
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 13 
	mov cx , 61
	jmp Check9x9GridInput

AdvBox41:
	mov si , 36
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 16
	mov cx , 19
	jmp Check9x9GridInput
	
AdvBox42:
	mov si , 37
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 16 
	mov cx , 24
	jmp Check9x9GridInput
	
AdvBox43:
	mov si , 38
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 16
	mov cx , 29
	jmp Check9x9GridInput

AdvBox44:
	mov si , 39
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 16 
	mov cx , 35
	jmp Check9x9GridInput

AdvBox45:
	mov si , 40
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 16 
	mov cx , 40
	jmp Check9x9GridInput

AdvBox46:
	mov si , 41
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 16 
	mov cx , 45
	jmp Check9x9GridInput

AdvBox47:
	mov si , 42
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 16 
	mov cx , 51
	jmp Check9x9GridInput
	
AdvBox48:
	mov si , 43
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 16
	mov cx , 56
	jmp Check9x9GridInput

AdvBox49:
	mov si , 44
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 16 
	mov cx , 61
	jmp Check9x9GridInput

AdvBox51:
	mov si , 45
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 5 
	mov cx , 19
	jmp Check9x9GridInput
	
AdvBox52:
	mov si , 46
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 5
	mov cx , 24
	jmp Check9x9GridInput

AdvBox53:
	mov si , 47
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 5
	mov cx , 29
	jmp Check9x9GridInput

AdvBox54:
	mov si , 48
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 5 
	mov cx , 35
	jmp Check9x9GridInput

AdvBox55:
	mov si , 49
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 5 
	mov cx , 40
	jmp Check9x9GridInput
	
AdvBox56:
	mov si , 50
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 5 
	mov cx , 45
	jmp Check9x9GridInput

AdvBox57:
	mov si , 51
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 5
	mov cx , 51
	jmp Check9x9GridInput

AdvBox58:
	mov si , 52
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 5
	mov cx , 56
	jmp Check9x9GridInput

AdvBox59:
	mov si , 53
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 5
	mov cx , 61
	jmp Check9x9GridInput

AdvBox61:
	mov si , 54
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9 
	mov cx , 19   
	jmp Check9x9GridInput

AdvBox62:
	mov si , 55
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 24
	jmp Check9x9GridInput


AdvBox63:
	mov si , 56
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 29
	jmp Check9x9GridInput

AdvBox64:
	mov si , 57
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 35
	jmp Check9x9GridInput

AdvBox65:
	mov si , 58
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 40
	jmp Check9x9GridInput

AdvBox66:
	mov si , 59
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 45 
	jmp Check9x9GridInput

AdvBox67:
	mov si , 60
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 51
	jmp Check9x9GridInput

AdvBox68:
	mov si , 61
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 56
	jmp Check9x9GridInput

AdvBox69:
	mov si , 62
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 9
	mov cx , 61
	jmp Check9x9GridInput
	
AdvBox71:
	mov si , 63
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 12
	mov cx , 19
	jmp Check9x9GridInput

AdvBox72:
	mov si , 64
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 12
	mov cx , 24
	jmp Check9x9GridInput

AdvBox73:
	mov si , 65
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 12
	mov cx , 29
	jmp Check9x9GridInput

AdvBox74:
	mov si , 66
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 12
	mov cx , 35
	jmp Check9x9GridInput

AdvBox75:
	mov si , 67
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 12
	mov cx , 40
	jmp Check9x9GridInput
	
AdvBox76:
	mov si , 68
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 12
	mov cx , 45
	jmp Check9x9GridInput

AdvBox77:
	mov si , 69
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 12
	mov cx , 51
	jmp Check9x9GridInput
	
AdvBox78:
	mov si , 70
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 12
	mov cx , 56
	jmp Check9x9GridInput

AdvBox79:
	mov si , 71
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 12
	mov cx , 61
	jmp Check9x9GridInput

AdvBox81:
	mov si , 72
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 15 
	mov cx , 19
	jmp Check9x9GridInput

AdvBox82:
	mov si , 73
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 15 
	mov cx , 24
	jmp Check9x9GridInput

AdvBox83:
	mov si , 74
	mov dl , byte[Array9x9 + si]
	jne SKIPIT
	mov bx , 15
	mov cx , 29
	jmp Check9x9GridInput

AdvBox84:
	mov si , 75
	mov dl , byte[Array9x9 + si]
	jne SKIPIT
	mov bx , 15 
	mov cx , 35
	jmp Check9x9GridInput

AdvBox85:
	mov si , 76
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 15 
	mov cx , 40
	jmp Check9x9GridInput

AdvBox86:
	mov si , 77
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 15 
	mov cx , 45
	jmp Check9x9GridInput

AdvBox87:
	mov si , 78
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 15 
	mov cx , 51
	jmp Check9x9GridInput

AdvBox88:
	mov si , 79
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 15
	mov cx , 56
	jmp Check9x9GridInput

AdvBox89:
	mov si , 80
	mov dl , byte[Array9x9 + si]
	cmp dl , 20h
	jne SKIPIT
	mov bx , 15 
	mov cx , 61
	jmp Check9x9GridInput

SKIPIT:
	call ClearNotes9x9
	ret

ClearNotes9x9: 
	pusha 
	mov ax, si
	shl si , 3
	add si , ax 
	mov byte[Notes9x9 + si + 0] , 20h
	mov byte[Notes9x9 + si + 1] , 20h
	mov byte[Notes9x9 + si + 2] , 20h
	mov byte[Notes9x9 + si + 3] , 20h
	mov byte[Notes9x9 + si + 4] , 20h
	mov byte[Notes9x9 + si + 5] , 20h
	mov byte[Notes9x9 + si + 6] , 20h
	mov byte[Notes9x9 + si + 7] , 20h
	mov byte[Notes9x9 + si + 8] , 20h
	popa 
	ret
AddNotesToGrid9x9:
	push cx
	push bx
	push si
	push dx
	mov ax, si
	shl si , 3
	add si , ax 	
	cmp byte[SelectedButton] , 31h 
	je NotesLoc01 
	cmp byte[SelectedButton] , 32h
	je NotesLoc02 	
	cmp byte[SelectedButton] , 33h
	je NotesLoc03 
	cmp byte[SelectedButton] , 34h 
	je NotesLoc04 
	cmp byte[SelectedButton] , 35h 
	je NotesLoc05 
	cmp byte[SelectedButton] , 36h
	je NotesLoc06 	
	cmp byte[SelectedButton] , 37h
	je NotesLoc07 
	cmp byte[SelectedButton] , 38h 
	je NotesLoc08 
	cmp byte[SelectedButton] , 39h 
	je NotesLoc09 
BackToNotes1:
	pop dx 
	pop si  
	pop bx
	pop cx 
	jmp AdvBtnSelection
NotesLoc01:
	mov byte[Notes9x9 + si + 0] , 31h 
	jmp BackToNotes1
NotesLoc02:
	mov byte[Notes9x9 + si + 1] , 32h 
	jmp BackToNotes1
NotesLoc03:
	mov byte[Notes9x9 + si + 2] , 33h
	jmp BackToNotes1
NotesLoc04:
	mov byte[Notes9x9 + si + 3] , 34h
	jmp BackToNotes1
NotesLoc05:
	mov byte[Notes9x9 + si + 4] , 35h 
	jmp BackToNotes1
NotesLoc06:
	mov byte[Notes9x9 + si + 5] , 36h 
	jmp BackToNotes1
NotesLoc07:
	mov byte[Notes9x9 + si + 6] , 37h
	jmp BackToNotes1
NotesLoc08:
	mov byte[Notes9x9 + si + 7] , 38h
	jmp BackToNotes1
NotesLoc09:
	mov byte[Notes9x9 + si + 8] , 39h
	jmp BackToNotes1
	
BtnAdv1:
	mov bx , 20
	mov cx , 15 
	mov si , 49
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 	
	
BtnAdv2:
	mov bx , 20
	mov cx , 21 
	mov si , 50
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 
	
BtnAdv3:
	mov bx , 20
	mov cx , 27 
	mov si , 51
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 
	
BtnAdv4:
	mov bx , 20
	mov cx , 33 
	mov si , 52
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 

BtnAdv5:
	mov bx , 20
	mov cx , 39 
	mov si , 53
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 
	
BtnAdv6:
	mov bx , 20
	mov cx , 45
	mov si , 54
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 
	
BtnAdv7:
	mov bx , 20
	mov cx , 51
	mov si , 55
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 
	
BtnAdv8:
	mov bx , 20
	mov cx , 57
	mov si , 56
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 
	
BtnAdv9:
	mov bx , 20
	mov cx , 63 
	mov si , 57
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret

BtnSel1:
    mov al, 31h
    mov [SelectedButton], al
    call Grid9x9
    call AdvLvlInput
    ret
		
BtnSel2:
    mov al, 32h
    mov [SelectedButton], al
    call Grid9x9
    call AdvLvlInput
    ret
	
BtnSel3:
    mov al, 33h
    mov [SelectedButton], al
    call Grid9x9
    call AdvLvlInput
    ret
	
BtnSel4:
    mov al, 34h
    mov [SelectedButton], al
    call Grid9x9
    call AdvLvlInput
    ret

BtnSel5:
    mov al, 35h
    mov [SelectedButton], al
    call Grid9x9
    call AdvLvlInput
    ret
	
BtnSel6:
    mov al, 36h
    mov [SelectedButton], al
    call Grid9x9
    call AdvLvlInput
    ret
	
BtnSel7:
    mov al, 37h
    mov [SelectedButton], al
    call Grid9x9
    call AdvLvlInput
    ret
	
BtnSel8:
    mov al, 38h
    mov [SelectedButton], al
    call Grid9x9
    call AdvLvlInput
    ret
	
BtnSel9:
    mov al, 39h
    mov [SelectedButton], al
    call Grid9x9
    call AdvLvlInput
    ret
; Get user input function
AdvLvlInput:
    mov ah, 00h
    int 16h
	cmp al , '1'
	je BtnSel1
	cmp al , '2'
	je BtnSel2
	cmp al , '3'
	je BtnSel3
	cmp al , '4'
	je BtnSel4
	cmp al , '5'
	je BtnSel5
	cmp al , '6'
	je BtnSel6
	cmp al , '7'
	je BtnSel7
	cmp al , '8'
	je BtnSel8
	cmp al , '9'
	je BtnSel9
	cmp al, 'p'
    je GamePaused
    cmp ah, 0x4B 
    je MoveRightAdv
    cmp ah, 0x4D 
    je MoveLeftAdv
	cmp ah, 0x48 
    je ScrollUp
    cmp ah, 0x50 
    je ScrollDown
	cmp al , 'n'
	je NotesModeActivated9x9
	cmp al, 'q'
    je QuitGame
	cmp al , 'u'
	je UndoLastInput9x9
	cmp al, 0x1B
    je ShowPlayMenuAgain

	jmp AdvLvlInput
    ret
UndoLastInput9x9:
	mov si , word[LastInput]
	cmp si , -1 
	je SkipThis
	mov byte[Array9x9 + si] , 20h 
SkipThis:
	call AdvLvlInput
NotesModeActivated9x9:
	cmp byte[NotesMode] , 0 
	je ActivateNotes9x9
	mov byte[SelectedButton] , 20h
	mov byte[NotesMode] , 0 
	call Grid9x9
	call AdvLvlInput
	
ActivateNotes9x9:
	mov byte[NotesMode] , 1 
	call Grid9x9
	call AdvLvlInput
ScrollUp:
    mov byte[SelectedButton], 20h
	mov byte[GridSelected9x9] , 0
	call Grid9x9
    call AdvLvlInput
	ret
	
ScrollDown:
	mov byte[GridSelected9x9] , 45
	mov byte[SelectedButton], 20h
	call Grid9x9
    call AdvLvlInput
	ret
MoveRightAdv:
    mov byte[SelectedButton], 20h
    mov al, [GridSelected9x9]
    cmp al, 0
    je MovetoNextOption1
    dec al
    mov [GridSelected9x9], al
    call Grid9x9
    call AdvLvlInput
    ret

MoveLeftAdv:
    mov byte[SelectedButton], 20h
    mov al, [GridSelected9x9]
    cmp al, 80
    je MovetoPrevOption1
    inc al
    mov [GridSelected9x9], al
    call Grid9x9
    call AdvLvlInput
    ret

MovetoNextOption1:
    mov byte[SelectedButton], 20h
    mov al, 80
    mov [GridSelected9x9], al
    call Grid9x9
    call AdvLvlInput
    ret

MovetoPrevOption1:
    mov byte[SelectedButton], 20h
    mov al, 0
    mov [GridSelected9x9], al
    call Grid9x9
    call AdvLvlInput
    ret

Show9x9Grid :
	mov ax, 0
    mov es, ax
	mov word [counterMin], 0
    mov word [counterSec], 0
    mov word [counterMS], 0
    mov byte [isPaused], 0
    cli
	mov word [es:8*4], clockISR
    mov [es:8*4+2], cs
    sti
	mov byte [SelectedButton], 20h
	call clrscr
	call Grid9x9
	call AdvLvlInput
	jmp EndGame
	
;	........................Game Paused Page......................

GamePaused:
	pusha
	xor byte [isPaused], 1	
	call clrscr
	mov byte[color] , 0x07
	mov si , AsciiArtLine1
    mov di, (8 * 80 * 2) + (20 * 2)
	call PrintString
	mov si , AsciiArtLine2
    mov di, (9 * 80 * 2) + (20 * 2)
	call PrintString
	mov si , AsciiArtLine3
    mov di, (10 * 80 * 2) + (20 * 2)
	call PrintString
	mov si , AsciiArtLine4
    mov di, (11 * 80 * 2) + (20 * 2)
	call PrintString
	mov si , AsciiArtLine5
    mov di, (12 * 80 * 2) + (20 * 2)
	call PrintString
	mov si , AsciiArtLine6
    mov di, (13 * 80 * 2) + (20 * 2)
	call PrintString
	mov byte[color] , 0x86
	mov si , Gamepause
    mov di, (18 * 80 * 2) + (25 * 2)
	call PrintString
	mov ah, 00h 
	int 16h 
	cmp byte[CurrentLevel] ,0 
	je BasicGrid
	cmp byte[CurrentLevel] ,1
	je AdvanceGrid
BasicGrid:
	cmp al , 'p'
	je Show4x4Grid
	jmp GamePaused
AdvanceGrid:
	cmp al , 'p'
	je Show9x9Grid
	jmp GamePaused
	popa 
	ret
PrintNotes:
    pusha           
    push es              

    mov ax, 0xB800
    mov es, ax

    mov ax, bx            
    mov dx, 80            
    mul dx               
    shl ax, 1             
    mov di, ax            

    mov ax, cx            
    shl ax, 1             
    add di, ax 
	mov ah , [color]
	shl si , 2
	add di , 2 
	mov al , [Notes4x4 + si]
	mov [es:di] , ax 
	add di , 8
	mov al , [Notes4x4 + si + 1]
	mov [es:di] , ax 
	add di , 312
	mov al , [Notes4x4 + si + 2]
	mov [es:di] , ax
	add di , 8
	mov al , [Notes4x4 + si + 3]
	mov [es:di] , ax 
	pop es
	popa 
	ret
	
;	........................Grid 4x4 (Basic Level)......................

Grid4x4:
    call CountDigits
	call PlayCompletionSound
	call CheckForVictory4x4
	
    mov si, Level1 
    mov di, (1 * 80 * 2) + (36	* 2) 
	mov byte[color] , 0x06
    call PrintString
	
	mov byte[color] , 0x07
    mov di, (1 * 80 * 2) + (2 * 2) 
	mov si , MistakeString
	call PrintString
	
	mov byte[color] , 0x07
	mov bx , 0
	mov cx , 11
	mov si , [MistakeCount]
	call PrintNumber
	
	mov byte[color] , 0x07
    mov di, (1 * 80 * 2) + (65 * 2) 
	mov si , TimerString
	call PrintString
	
	mov bx ,7
	mov cx , 3
	mov byte[color] , 0x06
	mov bp , MenuString
	call StringBox
	
	mov bx ,11
	mov cx , 3 
	mov byte[color] , 0x06
	mov bp , NotesString
	call StringBox
	
	mov bx ,15
	mov cx , 3 
	mov byte[color] , 0x06
	mov bp , UndoString
	call StringBox
	
	mov bx ,7
	mov cx , 60 
	mov byte[color] , 0x06
	mov bp , ButtonsString
	call StringBox
	
	mov bx ,11
	mov cx , 60 
	mov byte[color] , 0x06
	mov bp , QuitString
	call StringBox

	mov bx ,15
	mov cx , 60 
	mov byte[color] , 0x06
	mov bp , PauseString
	call StringBox
	
	
	mov byte[GridColors] , 0x67
	mov byte[GridColors + 1] , 0x76
	mov bx, 6           
	mov dl , 4
	mov si , 0
	call ToggleColors
GridOuter1:
	mov dh , 3
	mov cx, 26
	GirdInner1:
		call PrintGridBox1
		call PrintNotes
		add cx, 7
		call ToggleColors
		inc si 
		call PrintGridBox1
		call PrintNotes
		dec dh 
		cmp dh , 0
		jnz GirdInner1
	inc si 
	add bx , 3
	dec dl
	cmp dl , 0
	jnz GridOuter1
	
	mov di , (22*80*2) + (15*2)
	mov byte[color] , 0x07
	mov si , Remaining9x9Digits
	call PrintString
	
	mov di , 0
	mov bx , 21
	mov cx , 27 
RemainingLoop1: 
	mov byte[color] , 0x07
	mov si , [Grid4x4DigitsCount + di]
	call PrintNumber
	add cx , 7 
	inc di 
	cmp di , 4
	jnz RemainingLoop1
	
	mov dx , 4
	mov bx , 19
	mov cx , 27 
	mov si , 49
BtnLoop:
	mov byte[color] , 0x06
	call Button 
	mov byte[color] , 0x07
	call PrintNumber
	add cx , 7 
	add si , 1
	dec dx 
	cmp dx , 0
	jnz BtnLoop
	
	cmp byte[NotesMode] , 1
	je HighlightNotes 
GridSelection:
	cmp byte [GridSelected4x4], 0
    je GridBox1Seleceted
    cmp byte [GridSelected4x4], 1
    je GridBox2Seleceted
	cmp byte [GridSelected4x4], 2
    je GridBox3Seleceted
    cmp byte [GridSelected4x4], 3
    je GridBox4Seleceted
	cmp byte [GridSelected4x4], 4
    je GridBox11Seleceted
    cmp byte [GridSelected4x4], 5
    je GridBox12Seleceted
	cmp byte [GridSelected4x4], 6
    je GridBox13Seleceted
    cmp byte [GridSelected4x4], 7
    je GridBox14Seleceted
	cmp byte [GridSelected4x4], 8
    je GridBox21Seleceted
    cmp byte [GridSelected4x4], 9
    je GridBox22Seleceted
	cmp byte [GridSelected4x4], 10
    je GridBox23Seleceted
    cmp byte [GridSelected4x4], 11
    je GridBox24Seleceted
	cmp byte [GridSelected4x4], 12
    je GridBox31Seleceted
    cmp byte [GridSelected4x4], 13
    je GridBox32Seleceted
	cmp byte [GridSelected4x4], 14
    je GridBox33Seleceted
    cmp byte [GridSelected4x4], 15
    je GridBox34Seleceted
	
BtnSelection:
	cmp byte [SelectedButton], 31h
    je Btn1Selected
    cmp byte [SelectedButton], 32h
    je Btn2Selected
	cmp byte [SelectedButton], 33h
    je Btn3Selected
    cmp byte [SelectedButton], 34h
    je Btn4Selected
	ret
	
SodukoRowCheck:
	pusha
	cmp byte[MistakeCount] , 35h
	je LostGamePage
	mov bp , si 
    mov cx, si                  
    shr cx, 2                   
    mov dx, cx    
	cmp dx , 0 
	je Row1Check
	cmp dx , 1 
	je Row2Check
	cmp dx , 2 
	je Row3Check
	cmp dx , 3
	je Row4Check
Row1Check:
    lea bx, Array4x4
	jmp RowCheck
Row2Check:
    lea bx, Array4x4 + 4
	jmp RowCheck
Row3Check:
    lea bx, Array4x4 + 8
	jmp RowCheck
Row4Check:
    lea bx, Array4x4 + 12
	jmp RowCheck
RowCheck: 
    mov si, 0                   
OuterLoop:
    mov di, si                
    inc di                   

InnerLoop :
    cmp di, 4                   
    je CheckDuplicate           
    mov al, [bx + si]          
    cmp al, [bx + di]           
    je DuplicateFound            
    inc di                       
    jmp InnerLoop              

CheckDuplicate:
    inc si
    cmp si, 4                  
    jb OuterLoop
    jmp EndCheck   

DuplicateFound:
    mov al, [bx + si]              
    cmp al, 20h                    
    je CheckDuplicate 
    mov byte [Array4x4 + bp], 20h   
    inc byte [MistakeCount] 
	sub word[Array4x4Score] , 30 	
	call PlayLosingMelody
	call StopSound
    jmp CheckDuplicate 
	
EndCheck:
	popa 
    ret
	
CheckForVictory4x4:
    lea si, Array4x4
    mov cx, 16

CheckNextElement:
    mov al, [si]
    cmp al, 20h
    je GameNotOver
    inc si
    loop CheckNextElement

    jmp WinGamePage

GameNotOver:
    ret
	
	
SodukoColumnCheck:
	pusha
    cmp byte [MistakeCount], 35h      
    je LostGamePage
    mov bp, si                        
	mov ax, si         
	mov dx, 0           
	mov cx, 4           
	div cx            
	
    cmp dx, 0                            
    je Column1Check
    cmp dx, 1                             
    je Column2Check
    cmp dx, 2                             
    je Column3Check
    cmp dx, 3                            
    je Column4Check

Column1Check:
    lea bx, Array4x4               
    jmp ColumnCheck

Column2Check:
    lea bx, Array4x4 + 1              
    jmp ColumnCheck

Column3Check:
    lea bx, Array4x4 + 2               
    jmp ColumnCheck

Column4Check:
    lea bx, Array4x4 + 3                
    jmp ColumnCheck

ColumnCheck:
    mov si, 0                          
ColOuterLoop:
    mov di, si                          
    inc di                                

ColInnerLoop:
    cmp di, 4                           
    je CheckColDuplicate
	shl si ,2
	shl di , 2
    mov al, [bx + si] 
	shr si , 2
    mov dl, [bx + di] 
	shr di , 2
    cmp al, dl                           
    je ColDuplicateFound                    
    inc di                            
    jmp ColInnerLoop

CheckColDuplicate:
    inc si                                
    cmp si, 4                             
    jb ColOuterLoop   
    jmp EndCheck

ColDuplicateFound:
	shl si , 2
    mov al, [bx + si]   
	shr si , 2 
    cmp al, 20h                        
    je CheckColDuplicate
    mov byte [Array4x4 + bp], 20h   
	sub word[Array4x4Score] , 30 	
    inc byte [MistakeCount]               
    call PlayLosingMelody                
    call StopSound                       
    jmp CheckColDuplicate                  

EndColCheck:
	popa 
    ret 
	
SodukoSubGridCheck:
	mov bp  , si
    mov si, Array4x4  
    call CheckSubgrid_2x2    

    mov si, Array4x4 + 2 
    call CheckSubgrid_2x2

    mov si, Array4x4 + 8 
    call CheckSubgrid_2x2

    mov si, Array4x4 + 10 
    call CheckSubgrid_2x2

    ret

CheckSubgrid_2x2:
    mov al, [si]     
    mov bl, [si+1]   
    mov dl, [si+4]   
    mov cl, [si+5]   

    cmp al, 20h      
    je SkipAL
    cmp bl, al       
    je SubDuplicateFound
    cmp dl, al       
    je SubDuplicateFound
    cmp cl, al       
    je SubDuplicateFound

SkipAL:
    cmp bl, 20h      
    je SkipBL
    cmp dl, bl       
    je SubDuplicateFound
    cmp cl, bl       
    je SubDuplicateFound

SkipBL:
    cmp dl, 20h      
    je SkipDL
    cmp cl, dl       
    je SubDuplicateFound

SkipDL:
    cmp cl, 20h      
    je SkipCL
	mov si , bp 
    ret

SubDuplicateFound:
    mov byte [Array4x4 + bp], 20h   
    inc byte [MistakeCount] 
	call PlayLosingMelody
	call StopSound
    jmp SkipCL

SkipCL:
	mov si , bp 
    ret


PlayCompletionSound:
    lea si, Array4x4         
    lea di, CompletedFlags   

CheckRow1:
    mov cx, 0                
    lea si, Array4x4         
    cmp byte [CompletedFlags], 1
    je SkipRow1

    lea si, Array4x4         
    mov bx, 0                
CheckElementRow1:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow1        
    add si, 1                
    cmp si, Array4x4 + 4    
    je LineCompletedRow1    
    jmp CheckElementRow1    

FoundSpaceRow1:
    mov bx, 1                
    jmp SkipRow1            

LineCompletedRow1:
    mov byte [CompletedFlags], 1
    inc byte [CompletedLines]
	cmp byte[AudioMuted] , 1 
	je SkipRow1
    call PlayLineCompletion
    call StopSound         

SkipRow1:
    lea si, Array4x4 + 4    
    cmp byte [CompletedFlags + 1], 1
    je SkipRow2

    mov bx, 0
CheckElementRow2:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow2        
    add si, 1                
    cmp si, Array4x4 + 8    
    je LineCompletedRow2    
    jmp CheckElementRow2    

FoundSpaceRow2:
    mov bx, 1                
    jmp SkipRow2            

LineCompletedRow2:
    mov byte [CompletedFlags + 1], 1
    inc byte [CompletedLines]
	cmp byte[AudioMuted] , 1 
	je SkipRow2
    call PlayLineCompletion
    call StopSound         

SkipRow2:
    lea si, Array4x4 + 8    
    cmp byte [CompletedFlags + 2], 1
    je SkipRow3

    mov bx, 0
CheckElementRow3:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow3        
    add si, 1                
    cmp si, Array4x4 + 12   
    je LineCompletedRow3    
    jmp CheckElementRow3    

FoundSpaceRow3:
    mov bx, 1                
    jmp SkipRow3            

LineCompletedRow3:
    mov byte [CompletedFlags + 2], 1
    inc byte [CompletedLines]
	cmp byte[AudioMuted] , 1 
	je SkipRow3
    call PlayLineCompletion
    call StopSound         

SkipRow3:
    lea si, Array4x4 + 12   
    cmp byte [CompletedFlags + 3], 1
    je SkipRow4

    mov bx, 0
CheckElementRow4:
    mov al, [si]             
    cmp al, 20h              
    je FoundSpaceRow4        
    add si, 1                
    cmp si, Array4x4 + 16   
    je LineCompletedRow4    
    jmp CheckElementRow4    

FoundSpaceRow4:
    mov bx, 1                
    jmp SkipRow4            

LineCompletedRow4:
    mov byte [CompletedFlags + 3], 1
    inc byte [CompletedLines]
	cmp byte[AudioMuted] , 1 
	je SkipRow4
    call PlayLineCompletion
    call StopSound         

SkipRow4:
    ret

HighlightNotes:
	mov bx ,11
	mov cx , 3 
	mov byte[color] , 0x87
	mov bp , NotesString
	call StringBox
	jmp GridSelection
	
Check4x4GridInput:
	cmp byte[NotesMode] , 1 
	je AddNotesToGrid
	mov dl , byte[SelectedButton]
	mov byte[Array4x4 + si], dl
	mov byte[color] , 0xA6
	call PrintGridBox1
	call SodukoColumnCheck
	call SodukoRowCheck
	call SodukoSubGridCheck
	cmp byte[Array4x4 + si] , 20h
	jne ClearTheNotes4x4
BacktoCheck4x4GridInput:
	jmp BtnSelection
	
ClearTheNotes4x4:
	mov word[LastInput] , si  
	call ClearNotes
	jmp BacktoCheck4x4GridInput
	
GridBox1Seleceted:
	mov si , 0
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip0
	mov bx, 6  
	mov cx , 26 
	jmp Check4x4GridInput
skip0:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox2Seleceted
	
GridBox2Seleceted:
	mov si , 1
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip1
	mov bx, 6  
	mov cx , 33
	jmp Check4x4GridInput
skip1:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox3Seleceted
	
GridBox3Seleceted:
	mov si , 2
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip2
	mov bx, 6  
	mov cx , 40
	jmp Check4x4GridInput
skip2:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox4Seleceted
	
GridBox4Seleceted:
	mov si , 3
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip3
	mov bx, 6  
	mov cx , 47
	jmp Check4x4GridInput

skip3:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox11Seleceted

GridBox11Seleceted:
	mov si , 4
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip4
	mov bx, 9  
	mov cx , 26 
	jmp Check4x4GridInput

skip4:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox12Seleceted
	
GridBox12Seleceted:
	mov si , 5
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip5
	mov bx, 9  
	mov cx , 33
	jmp Check4x4GridInput
skip5:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox13Seleceted
	
GridBox13Seleceted:
	mov si , 6
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip6
	mov bx, 9  
	mov cx , 40
	jmp Check4x4GridInput

skip6:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox14Seleceted
	
GridBox14Seleceted:
	mov si , 7
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip7
	mov bx, 9 
	mov cx , 47
	jmp Check4x4GridInput

skip7:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox21Seleceted
	
GridBox21Seleceted:
	mov si , 8
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip8
	mov bx, 12  
	mov cx , 26 
	jmp Check4x4GridInput
skip8:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox22Seleceted
	
GridBox22Seleceted:
	mov si , 9
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip9
	mov bx, 12  
	mov cx , 33
	jmp Check4x4GridInput

skip9:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox23Seleceted
	
GridBox23Seleceted:
	mov si , 10
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip10
	mov bx, 12  
	mov cx , 40
	jmp Check4x4GridInput
skip10:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox24Seleceted
	
GridBox24Seleceted:
	mov si , 11 
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip11
	mov bx, 12 
	mov cx , 47
	jmp Check4x4GridInput
skip11:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox31Seleceted
	
GridBox31Seleceted:
	mov si , 12
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip12
	mov bx, 15  
	mov cx , 26 
	jmp Check4x4GridInput
skip12:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox32Seleceted
	
GridBox32Seleceted:
	mov si , 13 
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip13
	mov bx, 15  
	mov cx , 33
	jmp Check4x4GridInput

skip13:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox33Seleceted
	
GridBox33Seleceted:
	mov si , 14
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip14
	mov bx, 15  
	mov cx , 40
	jmp Check4x4GridInput

skip14:
    inc byte [GridSelected4x4]
	call ClearNotes
	jmp GridBox34Seleceted
	
GridBox34Seleceted:
	mov si , 15
	mov dl , byte[Array4x4 + si]
	cmp dl , 20h
	jne skip15
	mov bx, 15 
	mov cx , 47
	jmp Check4x4GridInput
skip15:
    mov byte [GridSelected4x4] , 0
	call ClearNotes
	jmp GridBox1Seleceted

ClearNotes: 
	pusha 
	shl si , 2 
	mov byte[Notes4x4 + si + 0] , 20h
	mov byte[Notes4x4 + si + 1] , 20h
	mov byte[Notes4x4 + si + 2] , 20h
	mov byte[Notes4x4 + si + 3] , 20h
	popa 
	ret
AddNotesToGrid:
	push cx
	push bx
	
	push si
	shl si , 2 	
	
	cmp byte[SelectedButton] , 31h 
	je NotesLoc1 
	cmp byte[SelectedButton] , 32h
	je NotesLoc2 	
	cmp byte[SelectedButton] , 33h
	je NotesLoc3 
	cmp byte[SelectedButton] , 34h 
	je NotesLoc4 
BackToNotes:
	pop si  
	pop bx
	pop cx 
	jmp BtnSelection
NotesLoc1:
	mov byte[Notes4x4 + si + 0] , 31h 
	jmp BackToNotes
NotesLoc2:
	mov byte[Notes4x4 + si + 1] , 32h 
	jmp BackToNotes
NotesLoc3:
	mov byte[Notes4x4 + si + 2] , 33h
	jmp BackToNotes
NotesLoc4:
	mov byte[Notes4x4 + si + 3] , 34h
	jmp BackToNotes
	
	
Btn1Selected :
	mov bx , 19 
	mov cx , 27 
	mov si , 49
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 

Btn2Selected :
	mov bx , 19 
	mov cx , 34 
	mov si , 50
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 
Btn3Selected:
	mov bx , 19 
	mov cx , 41 
	mov si , 51
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 
Btn4Selected:
	mov bx , 19 
	mov cx , 48 
	mov si , 52
	mov byte[color] , 0x87
	call Button 
	call PrintNumber
	ret 
	
Btn1Sel:
    mov al, 31h
    mov [SelectedButton], al
    call Grid4x4
    call BasicLvlInput
    ret
Btn2Sel:
    mov al, 32h
    mov [SelectedButton], al
    call Grid4x4
    call BasicLvlInput
    ret
Btn3Sel:
    mov al, 33h
    mov [SelectedButton], al
    call Grid4x4
    call BasicLvlInput
    ret
	
Btn4Sel:
    mov al, 34h
    mov [SelectedButton], al
    call Grid4x4
    call BasicLvlInput
    ret
BasicLvlInput:
    mov ah, 00h
    int 16h
	cmp al , '1'
	je Btn1Sel
	cmp al , '2'
	je Btn2Sel
	cmp al , '3'
	je Btn3Sel
	cmp al , '4'
	je Btn4Sel
	cmp al, 'p'
    je GamePaused
	cmp al , 'n'
	je NotesModeActivated
	cmp al , 'u'
	je UndoLastInput
	cmp al, 'q'
    je QuitGame
	cmp al, 0x1B
    je ShowPlayMenuAgain
    cmp ah, 4Bh 
    je MoveRight
    cmp ah, 4Dh  
    je MoveLeft
	jmp BasicLvlInput

UndoLastInput:
	mov si , word[LastInput]
	cmp si , -1 
	je Skipit
	mov byte[Array4x4 + si] , 20h 
Skipit:
	call BasicLvlInput
NotesModeActivated:
	cmp byte[NotesMode] , 0 
	je ActivateNotes
	mov byte[SelectedButton] , 20h
	mov byte[NotesMode] , 0 
	call Grid4x4
	call BasicLvlInput
	
ActivateNotes:
	mov byte[NotesMode] , 1 
	call Grid4x4
	call BasicLvlInput
MoveRight:
	mov byte[isLeft] ,  0
	mov byte [SelectedButton], 20h
    mov al, [GridSelected4x4]
    cmp al, 0
    je MovetoNextOption
    dec al
    mov [GridSelected4x4], al
    call Grid4x4
    call BasicLvlInput
    ret

MoveLeft:
	mov byte[isLeft] ,  1 
	mov byte [SelectedButton], 20h
    mov al, [GridSelected4x4]
    cmp al, 15
    je MovetoPrevOption
    inc al
    mov [GridSelected4x4], al
    call Grid4x4
    call BasicLvlInput
    ret

MovetoNextOption:
	mov byte [SelectedButton], 20h
    mov al, 15
    mov [GridSelected4x4], al
    call Grid4x4
    call BasicLvlInput
    ret

MovetoPrevOption:
	mov byte [SelectedButton], 20h
    mov al, 0
    mov [GridSelected4x4], al
    call Grid4x4
    call BasicLvlInput
    ret


Show4x4Grid :
	mov ax, 0
    mov es, ax
    cli
	mov word [es:8*4], clockISR
    mov [es:8*4+2], cs
    sti
	mov byte[isPaused] , 0 
    mov byte[SelectedButton], 20h
	call clrscr
	call Grid4x4
	call BasicLvlInput
	jmp EndGame

Button : 
	pusha 

    mov ax, bx           
    mov dx, 80            
    mul dx               
    shl ax, 1             
    mov di, ax            

    mov dx ,cx           
    shl dx, 1          
    add di, dx    
    mov si, ButtonTop
    call PrintString
	add di, 80 * 2
	mov si, ButtonSide
    call PrintString
	add di, 80 * 2
	mov si, ButtonBottom 
    call PrintString
	
	popa 
	ret 

clrscr:
    push es
    push ax
    push di
    mov ax, 0xB800 
    mov es, ax 
    mov di, 0
nextChar:
    mov word [es:di], 0x0720
    add di, 2 
    cmp di, 4000
    jne nextChar
	
	mov di , 0  
TopBoundary:
	mov word [es:di], 0x06CD
	add di , 2
	cmp di , 160
	jne TopBoundary
	
	mov di , 3840
LowerBoundary:
	mov word [es:di], 0x06CD
	add di , 2
	cmp di , 160
	jne LowerBoundary
	
	mov di , 0
LeftBoundary:
	mov word [es:di], 0x06BA
	add di , 160
	cmp di , 4000
	jne LeftBoundary
	
	mov di , 158
RightBoundary:
	mov word [es:di], 0x06BA
	add di , 160
	cmp di , 4158
	jne RightBoundary
	

    pop di
    pop ax
    pop es
    ret

AnimatedString:
    push ax
    push si
    push di
    push es

    mov ax, 0b800h   
    mov es, ax

printNext1:
    mov al, [si]       
    test al, al        
    jz done1            
    mov ah, [color]   
    mov [es:di], ax  
    add di, 2        
    inc si 
	mov cx , 1
	call sleep
    jmp printNext1  

done1:
    pop es
    pop di
    pop si
    pop ax
    ret

PrintString:
    push ax
    push si
    push di
    push es

    mov ax, 0b800h   
    mov es, ax

printNext:
    mov al, [si]       
    test al, al        
    jz done            
    mov ah, [color]   
    mov [es:di], ax  
    add di, 2        
    inc si    
    jmp printNext   

done:
    pop es
    pop di
    pop si
    pop ax
    ret

PrintNumber: 
	push ax
	push bx
	push cx 
	push dx
    push si
    push di
    push es

    mov ax, bx
	add ax, 1 
    mov dx, 80            
    mul dx               
    shl ax, 1             
    mov di, ax            

    mov dx, cx  
	add dx, 2
    shl dx, 1          
    add di, dx  

    mov ax, 0b800h   
    mov es, ax

	mov ax, si
	mov ah, [color]  
    mov [es:di], ax 

    pop es
    pop di
    pop si
	pop dx 
	pop cx 
	pop bx 
    pop ax
    ret

PrintNum: 
	pusha 
	
    mov ax, 0b800h   
    mov es, ax
	
	mov ax , si
	mov bx , 10 
	mov cx,  0 
NextDigit:
	mov dx ,  0  
	div bx 
	add dl  ,  0x30 
	push dx 
	inc cx 
	cmp ax , 0   
	jnz NextDigit
	
nextPos:
	pop dx 
	mov dh , 0x0B 
	mov [es:di] , dx 
	add di , 2 
	loop nextPos
	
	popa
    ret

;	........................Main Menu......................

DisplayMenu:
	mov byte[color] , 0x06
	mov si , ArtLineA
    mov di, (3 * 80 * 2) + (18 * 2)
	call PrintString
	mov si , ArtLineB
    mov di, (4 * 80 * 2) + (18 * 2)
	call PrintString
	mov si , ArtLineC
    mov di, (5 * 80 * 2) + (18 * 2)
	call PrintString
	mov si , ArtLineD
    mov di, (6 * 80 * 2) + (18 * 2)
	call PrintString
	
    mov si, Option1    
    mov di, (9 * 80 * 2) + (34 * 2)
	mov byte[color] , 0x07
    call PrintString  
	
    mov si, Option2    
    mov di, (11 * 80 * 2) + (32 * 2)
	mov byte[color] , 0x07
    call PrintString 
	
    mov si, Option3    
    mov di, (13 * 80 * 2) + (34 * 2)
	mov byte[color] , 0x07
    call PrintString    
	
    mov si, Option4    
    mov di, (15 * 80 * 2) + (33 * 2)
	mov byte[color] , 0x07
    call PrintString	
	
	mov si, StartString
    mov di, (21 * 80 * 2) + (23 * 2) 
	mov byte[color] , 0x86
    call PrintString
	
	cmp byte [SelectedOption], 0
    je SelectOption1
    cmp byte [SelectedOption], 1
    je SelectOption2
	cmp byte [SelectedOption], 2
    je SelectOption3
    cmp byte [SelectedOption], 3
    je SelectOption4
	
    ret

SelectOption1:
    mov si, Option1
	mov di, (9 * 80 * 2) + (34 * 2)
	mov byte[color] , 0x67
    call PrintString
    ret

SelectOption2:
    mov si, Option2
	mov di, (11 * 80 * 2) + (32 * 2)
	mov byte[color] , 0x67
    call PrintString
    ret
	
SelectOption3:
    mov si, Option3
	mov di, (13 * 80 * 2) + (34 * 2)
	mov byte[color] , 0x67
    call PrintString
    ret
	
SelectOption4:
    mov si, Option4
	mov di, (15 * 80 * 2) + (33 * 2)
	mov byte[color] , 0x67
    call PrintString
    ret
getInput:
    mov ah, 00h
    int 16h
    cmp ah, 48h
    je MoveUP
    cmp ah, 50h
    je MoveDown
	cmp al, 0x1B
    je ShowMenuAgain
    cmp al, 13
    je ShowSelectedOption
	jmp getInput
    ret


ShowMenuAgain:
	mov byte [isPaused], 1	
    call clrscr
    call DisplayMenu
    call getInput
    jmp EndGame

MoveUP:
    mov al, [SelectedOption]
    cmp al, 0
    je MovetoLastOption
    dec al
    mov [SelectedOption], al
    call DisplayMenu
    call getInput
    ret

MoveDown:
    mov al, [SelectedOption]
    cmp al, 3
    je MovetoFirstOption
    inc al
    mov [SelectedOption], al
    call DisplayMenu
    call getInput
    ret

MovetoLastOption:
    mov al, 3
    mov [SelectedOption], al
    call DisplayMenu
    call getInput
    ret

MovetoFirstOption:
    mov al, 0
    mov [SelectedOption], al
    call DisplayMenu
    call getInput
    ret

ShowSelectedOption:
	call clrscr
    cmp byte [SelectedOption], 0
    je ShowLvlMenu
    cmp byte [SelectedOption], 1
    je ShowInstructions
    cmp byte [SelectedOption], 2
    je ShowSettings
    cmp byte [SelectedOption], 3
    je QuitGame
    ret	
	
ShowPlayMenu:
    mov byte [PlayOptions], 0
	mov byte [isPaused], 1	
	call clrscr
	call PlayGameMenu
	call getPlayInput
	ret 
	

ShowPlayMenuAgain:
    mov byte [SelectedOption], 0
	mov byte [isPaused], 1	
    call clrscr
    call PlayGameMenu
    call getPlayInput
    jmp EndGame
	
;	........................Diff Lvl Menu......................


DiffLevelMenu:
	mov byte[color] , 0x06
	mov si , PlayArt1
    mov di, (3 * 80 * 2) + (24 * 2)
	call PrintString
	mov si , PlayArt2
    mov di, (4 * 80 * 2) + (24 * 2)
	call PrintString
	mov si , PlayArt3
    mov di, (5 * 80 * 2) + (24 * 2)
	call PrintString
	mov si , PlayArt4
    mov di, (6 * 80 * 2) + (24 * 2)
	call PrintString
	mov si , PlayArt5
    mov di, (7 * 80 * 2) + (24 * 2)
	call PrintString

    mov si, DiffOption1    
    mov di, (9 * 80 * 2) + (36 * 2)
	mov byte[color] , 0x07
    call PrintString  
	
    mov si, DiffOption2  
    mov di, (11 * 80 * 2) + (35 * 2)
	mov byte[color] , 0x07
    call PrintString 
	
    mov si, DiffOption3    
    mov di, (13 * 80 * 2) + (36 * 2)
	mov byte[color] , 0x07
    call PrintString    
	
	cmp byte [LvlOptions], 0
    je SelectedLvl1
    cmp byte [LvlOptions], 1
    je SelectedLvl2
	cmp byte [LvlOptions], 2
    je SelectedLvl3
	
    ret

SelectedLvl1:
    mov si, DiffOption1
	mov di, (9 * 80 * 2) + (36 * 2)
	mov byte[color] , 0x67
    call PrintString
    ret

SelectedLvl2:
    mov si, DiffOption2
	mov di, (11 * 80 * 2) + (35 * 2)
	mov byte[color] , 0x67
    call PrintString
    ret
	
SelectedLvl3:
    mov si, DiffOption3
	mov di, (13 * 80 * 2) + (36 * 2)
	mov byte[color] , 0x67
    call PrintString
    ret

getDiffLvlInput:
    mov ah, 00h
    int 16h
    cmp ah, 48h
    je MoveLvlUP
    cmp ah, 50h
    je MoveLvlDown
	cmp al, 0x1B
    je ShowMenuAgain
    cmp al, 13
    je ShowSelectedLvlOption
	jmp getDiffLvlInput
    ret

MoveLvlUP:
    mov al, [LvlOptions]
    cmp al, 0
    je MovetoLastLvlOption
    dec al
    mov [LvlOptions], al
    call DiffLevelMenu
    call getDiffLvlInput
    ret

MoveLvlDown:
    mov al, [LvlOptions]
    cmp al, 2
    je MovetoFirstLvlOption
    inc al
    mov [LvlOptions], al
    call DiffLevelMenu
    call getDiffLvlInput
    ret

MovetoLastLvlOption:
    mov al, 2
    mov [LvlOptions], al
    call DiffLevelMenu
    call getDiffLvlInput
    ret

MovetoFirstLvlOption:
    mov al, 0
    mov [LvlOptions], al
    call DiffLevelMenu
    call getDiffLvlInput
    ret

ShowSelectedLvlOption:
	call clrscr
	mov word[Array4x4Score] ,500
	mov word[Array9x9Score] , 990 
    cmp byte [LvlOptions], 0
    je EasyLvl
    cmp byte [LvlOptions], 1
    je MediumLvl
    cmp byte [LvlOptions], 2
    je HardLvl 
    ret	
EasyLvl:
	call EasyLvl4x4
	call EasyLvl9x9
	call Reinitialize_Notes4x4
	call ReinitializeNotes9x9
	mov byte[MistakeCount], 30h
	mov word [counterMin], 0
    mov word [counterSec], 0
    mov word [counterMS], 0
    mov byte [isPaused], 0
	jmp ShowPlayMenu

MediumLvl:
	call MediumLvl4x4
	call MediumLvl9x9
	call Reinitialize_Notes4x4
	call ReinitializeNotes9x9
	mov byte[MistakeCount], 30h
	mov word [counterMin], 0
    mov word [counterSec], 0
    mov word [counterMS], 0
    mov byte [isPaused], 0
	jmp ShowPlayMenu

HardLvl:
	call HardLvl4x4
	call HardLvl9x9
	call Reinitialize_Notes4x4
	call ReinitializeNotes9x9
	mov byte[MistakeCount], 30h
	mov word [counterMin], 0
    mov word [counterSec], 0
    mov word [counterMS], 0
    mov byte [isPaused], 0
	jmp ShowPlayMenu
	
ShowLvlMenu:
    mov byte [LvlOptions], 0
	mov byte [isPaused], 1	
	call clrscr
	call DiffLevelMenu
	call getDiffLvlInput
	ret 
	
	
;	........................Play Game Menu......................

PlayGameMenu:
	mov byte[color] , 0x06
	mov si , PlayArt1
    mov di, (3 * 80 * 2) + (24 * 2)
	call PrintString
	mov si , PlayArt2
    mov di, (4 * 80 * 2) + (24 * 2)
	call PrintString
	mov si , PlayArt3
    mov di, (5 * 80 * 2) + (24 * 2)
	call PrintString
	mov si , PlayArt4
    mov di, (6 * 80 * 2) + (24 * 2)
	call PrintString
	mov si , PlayArt5
    mov di, (7 * 80 * 2) + (24 * 2)
	call PrintString

    mov si, PlayOption1    
    mov di, (9 * 80 * 2) + (36 * 2)
	mov byte[color] , 0x07
    call PrintString  
	
    mov si, PlayOption2  
    mov di, (11 * 80 * 2) + (35 * 2)
	mov byte[color] , 0x07
    call PrintString 
	
    mov si, PlayOption3    
    mov di, (13 * 80 * 2) + (36 * 2)
	mov byte[color] , 0x07
    call PrintString    
	
	cmp byte [PlayOptions], 0
    je SelectedPlay1
    cmp byte [PlayOptions], 1
    je SelectedPlay2
	cmp byte [PlayOptions], 2
    je SelectedPlay3
	
    ret

SelectedPlay1:
    mov si, PlayOption1
	mov di, (9 * 80 * 2) + (36 * 2)
	mov byte[color] , 0x67
    call PrintString
    ret

SelectedPlay2:
    mov si, PlayOption2
	mov di, (11 * 80 * 2) + (35 * 2)
	mov byte[color] , 0x67
    call PrintString
    ret
	
SelectedPlay3:
    mov si, PlayOption3
	mov di, (13 * 80 * 2) + (36 * 2)
	mov byte[color] , 0x67
    call PrintString
    ret

getPlayInput:
    mov ah, 00h
    int 16h
    cmp ah, 48h
    je MovePlayUP
    cmp ah, 50h
    je MovePlayDown
	cmp al, 0x1B
    je ShowLvlMenu
    cmp al, 13
    je ShowSelectedPlayOption
	jmp getPlayInput
    ret

MovePlayUP:
    mov al, [PlayOptions]
    cmp al, 0
    je MovetoLastPlayOption
    dec al
    mov [PlayOptions], al
    call PlayGameMenu
    call getPlayInput
    ret

MovePlayDown:
    mov al, [PlayOptions]
    cmp al, 2
    je MovetoFirstPlayOption
    inc al
    mov [PlayOptions], al
    call PlayGameMenu
    call getPlayInput
    ret

MovetoLastPlayOption:
    mov al, 2
    mov [PlayOptions], al
    call PlayGameMenu
    call getPlayInput
    ret

MovetoFirstPlayOption:
    mov al, 0
    mov [PlayOptions], al
    call PlayGameMenu
    call getPlayInput
    ret

ShowSelectedPlayOption:
	call clrscr
    cmp byte [PlayOptions], 0
    je PlayGame
    cmp byte [PlayOptions], 1
    je RestartGame
    cmp byte [PlayOptions], 2
    je ShowLvlMenu 
    ret	

PlayGame:
	call clrscr
	cmp byte[CurrentLevel] , 0
	je Show4x4Grid
	cmp byte[CurrentLevel] , 1
	je Show9x9Grid
    call getInput
	ret
	
RestartGame:
	call Reinitialize_Notes4x4
	call ReinitializeNotes9x9
	mov word[NotesMode] , 0 
	mov byte[MistakeCount], 30h
	mov word [counterMin], 0
    mov word [counterSec], 0
    mov word [counterMS], 0
    mov byte [isPaused], 0
	mov word[Array4x4Score] , 500
	mov word[Array9x9Score] , 990
	cmp byte[LvlOptions] , 0  
	je ReloadEasy
	cmp byte[LvlOptions] , 1 
	je ReloadMedium
	cmp byte[LvlOptions] , 2  
	je ReloadHard
	
	
ReloadEasy:
	call EasyLvl4x4
	call EasyLvl9x9
	jmp gotoPlay
ReloadMedium:
	call MediumLvl4x4
	call MediumLvl9x9
	jmp gotoPlay
ReloadHard:
	call HardLvl9x9
	call HardLvl4x4
	jmp gotoPlay
gotoPlay:
	jmp PlayGame
	ret 

;	........................Instructions Page......................

ShowInstructions:
	mov si, Option2 
    mov di, (2 * 80 * 2) + (32 * 2) 
	mov byte[color] , 0x06
    call PrintString
	
    mov si, IntMessage1
    mov di, (8 * 80 * 2) + (6 * 2) 
	mov byte[color] , 0x07
    call AnimatedString
	
	mov si, IntMessage2
    mov di, (10 * 80 * 2) + (6 * 2) 
	mov byte[color] , 0x07
    call AnimatedString
	
	mov si, MenuMessage
    mov di, (21 * 80 * 2) + (25 * 2) 
	mov byte[color] , 0x86
    call PrintString
InstructionsInput:
	mov ah , 00h
	int 16h 
	cmp al, 0x1B
    je ShowMenuAgain
	jmp InstructionsInput
	ret

sleep: 
	push cx
	mov cx, 0xFFFF
	delay: 
	loop delay
	pop cx
	ret
	
;	........................Settings Page......................

ShowSettings:
    mov si, Option3 
    mov di, (2 * 80 * 2) + (34 * 2) 
    mov byte[color], 0x06
    call PrintString

    mov si, MenuMessage
    mov di, (21 * 80 * 2) + (25 * 2) 
    mov byte[color], 0x86
    call PrintString
    ; Audio Option
    mov si, Audio 
    mov di, (8 * 80 * 2) + (51 * 2) 
    mov byte[color], 0x67
    call PrintString

    mov si, LevelString  
    mov di, (8 * 80 * 2) + (20 * 2)
    mov byte[color], 0x06
    call PrintString
	
	mov bx, 9 
	mov cx , 49
	call Button
	
	mov bx, 9 
	mov cx , 55
	call Button

    cmp byte [CurrentLevel], 0
    je BasicSelected
    mov si, Level1    
    mov di, (10 * 80 * 2) + (20 * 2)
    mov byte[color], 0x07  
    call PrintString
    jmp DisplayAdvanced

BasicSelected:
	mov byte[color], 0x67 
    mov si, Level1    
    mov di, (10 * 80 * 2) + (20 * 2)
    call PrintString

DisplayAdvanced:
    cmp byte [CurrentLevel], 1
    je AdvancedSelected
    mov si, Level2    
    mov di, (12 * 80 * 2) + (20 * 2)
    mov byte[color], 0x07 
    call PrintString
    jmp EndDisplay

AdvancedSelected:
	mov byte[color], 0x67  
    mov si, Level2    
    mov di, (12 * 80 * 2) + (20 * 2)
    call PrintString

EndDisplay:

    cmp byte [AudioMuted], 0
    je AudioOn
    jmp AudioOff

AudioOn:
    mov si, On
    mov byte[color], 0x67  
    mov di, (10 * 80 * 2) + (50 * 2) 
    call PrintString

    mov si, Off
    mov byte[color], 0x07 
    mov di, (10 * 80 * 2) + (56 * 2) 
    call PrintString
    jmp DisplayAudio

AudioOff:
    mov si, On
    mov byte[color], 0x07 
    mov di, (10 * 80 * 2) + (50 * 2) 
    call PrintString

    mov si, Off
    mov byte[color], 0x67 
    mov di, (10 * 80 * 2) + (56 * 2) 
    call PrintString
    jmp DisplayAudio

DisplayAudio:
    call getSettingsInput

getSettingsInput:
    mov ah, 00h
    int 16h
    cmp al, 'b' 
    je SelectBasic
    cmp al, 'a' 
    je SelectAdvanced
    cmp al, 'u' 
    je ToggleAudio
	cmp al, 1Bh 
    je ShowMenuAgain
    jmp ShowSettings 

SelectBasic:
    mov byte [CurrentLevel], 0 
    call ShowSettings
    ret

SelectAdvanced:
    mov byte [CurrentLevel], 1 
    call ShowSettings
    ret

ToggleAudio:
    cmp byte [AudioMuted], 0
    je MuteAudio
    mov byte [AudioMuted], 0
    call ShowSettings
    ret

MuteAudio:
    mov byte [AudioMuted], 1
    call ShowSettings
    ret
;	........................Quit Game......................
QuitGame:
	mov byte [isPaused], 1	
    call clrscr
	call QuitAsciiArt
	mov si, QuitMessage2
    mov di, (21 * 80 * 2) + (30 * 2) 
	mov byte[color] , 0x86
    call PrintString
	call PlayQuittingMelody
	call StopSound
	jmp EndGame
	
;	........................Lost Game Page......................

LostGamePage:
	pusha 
	mov byte [isPaused], 1	
	call clrscr
	call GameOverArt
	
	mov si , LostString
    mov di, (3 * 80 * 2) + (28 * 2)
	call PrintString
	
	mov si , FinalScore
    mov di, (5 * 80 * 2) + (28 * 2)
	call PrintString
	
	mov byte[color] , 0x87
	mov si , WinInputString
    mov di, (21 * 80 * 2) + (25 * 2)
	call PrintString
	
	cmp byte[CurrentLevel] , 1
	je Print9x9Score1
	
	cmp byte[CurrentLevel] , 0
	je Print4x4Score1
	
Print9x9Score1:
	mov byte[color] , 0x06
    mov di, (5 * 80 * 2) + (45 * 2) 
	mov si , [Array9x9Score]
	call PrintNum
	jmp LostGameInput
	
Print4x4Score1:
	mov byte[color] , 0x06
    mov di, (5 * 80 * 2) + (45 * 2) 
	mov si , [Array4x4Score]
	call PrintNum
	jmp LostGameInput
	
LostGameInput:
	mov ah , 00h
	int 16h 
	cmp al, 0x1B
    je ShowMenuAgain
	cmp al, 'q'
    je QuitGame
	cmp al, 'r'
    je RestartGame 
	jmp LostGameInput
	popa
	ret
	
QuitAsciiArt:
	pusha
	mov byte[color] , 0x06
	mov si , QuitArt1
    mov di, (8 * 80 * 2) + (6 * 2)
	call AnimatedString
	mov si , QuitArt2
    mov di, (9 * 80 * 2) + (6 * 2)
	call AnimatedString
	mov si , QuitArt3
    mov di, (10 * 80 * 2) + (6 * 2)
	call AnimatedString
	mov si , QuitArt4
    mov di, (11 * 80 * 2) + (6 * 2)
	call AnimatedString
	mov si , QuitArt5
    mov di, (12 * 80 * 2) + (6 * 2)
	call AnimatedString
	mov si , QuitArt6
    mov di, (13 * 80 * 2) + (6 * 2)
	call AnimatedString
	popa 
	ret
GameOverArt:
	pusha
	mov byte[color] , 0x06
	mov si , gameArt1
    mov di, (8 * 80 * 2) + (13 * 2)
	call AnimatedString
	mov si , gameArt2
    mov di, (9 * 80 * 2) + (13 * 2)
	call AnimatedString
	mov si , gameArt3
    mov di, (10 * 80 * 2) + (13 * 2)
	call AnimatedString
	mov si , gameArt4
    mov di, (11 * 80 * 2) + (13 * 2)
	call AnimatedString
	mov si , gameArt5
    mov di, (12 * 80 * 2) + (13 * 2)
	call AnimatedString
	popa 
	ret
	
	
;	........................Win Game Page......................

WinGamePage:
	pusha 
	mov byte [isPaused], 1	
	call clrscr
	call GameWinArt
	call PlayWinningSound
	call StopSound
	
	mov si , FinalScore
    mov di, (3 * 80 * 2) + (28 * 2)
	call PrintString
	
	mov byte[color] , 0x87
	mov si , WinInputString
    mov di, (21 * 80 * 2) + (25 * 2)
	call PrintString
	
	cmp byte[CurrentLevel] , 1
	je Print9x9Score
	
	cmp byte[CurrentLevel] , 0
	je Print4x4Score
	
Print9x9Score:
	mov byte[color] , 0x06
    mov di, (3 * 80 * 2) + (45 * 2) 
	mov si , [Array9x9Score]
	call PrintNum
	jmp WinGameInput
	
Print4x4Score:
	mov byte[color] , 0x06
    mov di, (3 * 80 * 2) + (45 * 2) 
	mov si , [Array4x4Score]
	call PrintNum
	jmp WinGameInput
	
WinGameInput:
	mov ah , 00h
	int 16h 
	cmp al, 0x1B
    je ShowMenuAgain
	cmp al, 'q'
    je QuitGame
	cmp al, 'r'
    je RestartGame 
	jmp WinGameInput
	popa
	ret

GameWinArt:
	pusha
	mov byte[color] , 0x06
	mov si , winart1
    mov di, (8 * 80 * 2) + (17 * 2)
	call AnimatedString
	mov si , winart2
    mov di, (9 * 80 * 2) + (17 * 2)
	call AnimatedString
	mov si , winart3
    mov di, (10 * 80 * 2) + (17 * 2)
	call AnimatedString
	mov si , winart4
    mov di, (11 * 80 * 2) + (17 * 2)
	call AnimatedString
	mov si , winart5
    mov di, (12 * 80 * 2) + (17 * 2)
	call AnimatedString
	popa 
	ret


;	........................ Audio Part ......................

NoteC4 equ 261
NoteE4 equ 329
NoteG4 equ 392
NoteC5 equ 523
NoteD5 equ 587
NoteB4 equ 493
NoteA4 equ 440
NoteB3 equ 247    
NoteA3 equ 220   
NoteG3 equ 196     
NoteF3 equ 175     
NoteD4 equ 293   
NoteF4 equ 349  

DivisorC4 equ 1193180 / NoteC4
DivisorE4 equ 1193180 / NoteE4
DivisorG4 equ 1193180 / NoteG4
DivisorC5 equ 1193180 / NoteC5
DivisorD5 equ 1193180 / NoteD5
DivisorB4 equ 1193180 / NoteB4
DivisorA4 equ 1193180 / NoteA4
DivisorB3 equ 1193180 / NoteB3     
DivisorA3 equ 1193180 / NoteA3      
DivisorG3 equ 1193180 / NoteG3     
DivisorF3 equ 1193180 / NoteF3    
DivisorD4 equ 1193180 / NoteD4   
DivisorF4 equ 1193180 / NoteF4      

PlayNote:
    mov al, 03h        
    out 61h, al         
    mov al, 0xB6        
    out 43h, al         
    mov ax, [noteDivisor]
    out 42h, al          
    shr ax, 8        
    out 42h, al       
    ret

StopSound:
    mov al, 00h         
    out 61h, al     
    ret

PlayLineCompletion:
 
    mov word [noteDivisor], DivisorC4  
    call PlayNote
    call DelayShort1
    mov word [noteDivisor], DivisorE4  
    call PlayNote
    call DelayShort1
    mov word [noteDivisor], DivisorG4  
    call PlayNote
    call DelayShort1
    mov word [noteDivisor], DivisorC5  
    call PlayNote
    call DelayLong1
    mov word [noteDivisor], DivisorB4  
    call PlayNote
    call DelayShort1
    mov word [noteDivisor], DivisorA4  
    call PlayNote
    call DelayShort1
    mov word [noteDivisor], DivisorG4 
    call PlayNote
    call DelayShort1
    mov word [noteDivisor], DivisorF4  
    call PlayNote
    call DelayShort1
    mov word [noteDivisor], DivisorE4  
    call PlayNote
    call DelayShort1
    mov word [noteDivisor], DivisorD4 
    call PlayNote
    call DelayShort1
    mov word [noteDivisor], DivisorC4  
    call PlayNote
    call DelayLong1
    ret
	
PlayQuittingMelody:
    mov cx, 12        
    
playNextNote4:
    mov dx, cx
    cmp dx, 12
    je playNoteC41  
    cmp dx, 11
    je playNoteE41 
    cmp dx, 10
    je playNoteG41  
    cmp dx, 9
    je playNoteF41  
    cmp dx, 8
    je playNoteD41  
    cmp dx, 7
    je playNoteA31  
    cmp dx, 6
    je playNoteB31  
    cmp dx, 5
    je playNoteC41  
    cmp dx, 4
    je playNoteD41  
    cmp dx, 3
    je playNoteE41  
    cmp dx, 2
    je playNoteG41  
    cmp dx, 1
    je playNoteC41  

playNoteC41:
    mov word [noteDivisor], DivisorC4  
    jmp playAndDelay4
playNoteE41:
    mov word [noteDivisor], DivisorE4  
    jmp playAndDelay4
playNoteG41:
    mov word [noteDivisor], DivisorG4  
    jmp playAndDelay4
playNoteF41:
    mov word [noteDivisor], DivisorF4  
    jmp playAndDelay4
playNoteD41:
    mov word [noteDivisor], DivisorD4  
    jmp playAndDelay4
playNoteA31:
    mov word [noteDivisor], DivisorA3  
    jmp playAndDelay4
playNoteB31:
    mov word [noteDivisor], DivisorB3  
    jmp playAndDelay4

playAndDelay4:
    call PlayNote
    call DelayShort   
    dec cx
    jnz playNextNote4 
    ret

PlayWinningSound:
    mov word [noteDivisor], DivisorC4
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorE4
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorG4
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorC5
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorB4
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorA4
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorG4
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorC5
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorD5
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorC5
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorC4
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorC4
    call PlayNote
    call DelayLong
    mov word [noteDivisor], DivisorE4
    call PlayNote
    call DelayLong
    ret

PlayCuteWinningMelody:
    mov cx, 9       

playNextNote:
    mov dx, cx
    cmp dx, 9
    je playNote1
    cmp dx, 8
    je playNote2
    cmp dx, 7
    je playNote3
    cmp dx, 6
    je playNote4
    cmp dx, 5
    je playNote5
    cmp dx, 4
    je playNote6
    cmp dx, 3
    je playNote7
    cmp dx, 2
    je playNote8
    cmp dx, 1
    je playNote9

playNote1:
    mov word [noteDivisor], DivisorG4  
    jmp playAndDelay
playNote2:
    mov word [noteDivisor], DivisorG4  
    jmp playAndDelay
playNote3:
    mov word [noteDivisor], DivisorA4 
    jmp playAndDelay
playNote4:
    mov word [noteDivisor], DivisorC5  
    jmp playAndDelay
playNote5:
    mov word [noteDivisor], DivisorB4  
    jmp playAndDelay
playNote6:
    mov word [noteDivisor], DivisorC5 
    jmp playAndDelay
playNote7:
    mov word [noteDivisor], DivisorA4 
    jmp playAndDelay
playNote8:
    mov word [noteDivisor], DivisorG4  
    jmp playAndDelay
playNote9:
    mov word [noteDivisor], DivisorC5 
    jmp playAndDelay

playAndDelay:
    call PlayNote
    call DelayShort   
    dec cx
    jnz playNextNote   
    ret

PlayLosingMelody:
    mov cx, 8       

playNextNote1:
    mov dx, cx
    cmp dx, 8
    je playNoteC4   
    cmp dx, 7
    je playNoteB3  
    cmp dx, 6
    je playNoteA3  
    cmp dx, 5
    je playNoteG3   
    cmp dx, 4
    je playNoteF3   
    cmp dx, 3
    je playNoteG3  
    cmp dx, 2
    je playNoteA3   
    cmp dx, 1
    je playNoteB3   

playNoteC4:
    mov word [noteDivisor], DivisorC4  
    jmp playAndDelay1
playNoteB3:
    mov word [noteDivisor], DivisorB3  
    jmp playAndDelay1
playNoteA3:
    mov word [noteDivisor], DivisorA3  
    jmp playAndDelay1
playNoteG3:
    mov word [noteDivisor], DivisorG3  
    jmp playAndDelay1
playNoteF3:
    mov word [noteDivisor], DivisorF3  
    jmp playAndDelay1

playAndDelay1:
    call PlayNote
    call DelayShort   
    dec cx
    jnz playNextNote1   
    ret

RepeatLosingMelody:
    call PlayLosingMelody  
    call PlayLosingMelody  
    ret

PlayDhooDhoo:
    mov word [noteDivisor], DivisorD4 
    call PlayNote
    call DelayShort
    mov word [noteDivisor], DivisorD4  
    call PlayNote
    call DelayShort
    mov word [noteDivisor], DivisorE4  
    mov cx, 5 
playDo:
    call PlayNote
    call DelayShort
    dec cx
    jnz playDo
    ret

DelayLong:
    push cx
    push dx
    mov cx, 300
    mov dx, 1000
delayLongOuter:
    push cx
    mov cx, dx
delayLongInner:
    nop
    loop delayLongInner
    pop cx
    loop delayLongOuter
    pop dx
    pop cx
    ret

DelayShort:
    push cx
    push dx
    mov cx, 150          
    mov dx, 1000         
delayShortOuter:
    push cx              
    mov cx, dx           
delayShortInner:
    nop              
    loop delayShortInner
    pop cx           
    loop delayShortOuter
    pop dx
    pop cx
    ret
	
DelayShort1:
    push cx
    push dx
    mov cx, 100       
    mov dx, 1000         
delayShortOuter1:
    push cx              
    mov cx, dx           
delayShortInner1:
    nop              
    loop delayShortInner1
    pop cx           
    loop delayShortOuter1
    pop dx
    pop cx
    ret
	
DelayLong1:
    push cx
    push dx
    mov cx, 200          
    mov dx, 1000         
delayLongOuter1:
    push cx              
    mov cx, dx           
delayLongInner1:
    nop              
    loop delayLongInner1
    pop cx           
    loop delayLongOuter1
    pop dx
    pop cx
    ret
	
EndGame:
    mov ax, 0x4C00
    int 21h
