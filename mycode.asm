TITLE APU CYBER SECURITY CLUB  ;system title
.MODEL SMALL                   ;declare memory model (SMALL)
.STACK                         ;declare STACK gement
.DATA                          ;declare DATA segment 

    ;Develop by Lee Woon Xun
    ;TP 067738
    
    NEWLINE             DB 10,13,"$"    ;Break line
    MSG DB 'APU CYBER SECURITY CLUB$'
    
    
    ;=======================
    ;  DEFAULT MEMBER DATA
    ;=======================     
        DEFAULTMEMBERNAME   DB "WX$"          ;member name
        DEFAULTMEMBERTP     DB "TP067738$"    ;member tp number
    
   
   
    ;=======================
    ;   DISPLAY MESSAGE
    ;======================= 
        EVENTMODEWEB            DB 'WEB$'              
        EVENTMODECTF            DB 'CTF COMPETITION$'
        
        ;MAIN MENU LIST
        MAINMENULIST            DB 'MENU: '  
                                DB 10,'[1]. WEBINAR'
                                DB 10,'[2]. CTF COMPETITION'
                                DB 10,'[-1]. EXIT$'  
       
        ;WEBINAR MENU LIST    
        WEBINARMENULIST         DB 'WEBINAR MENU:'
                                DB 10,'[1]. Ransomware Impact In Cyber IR Strategies'
                                DB 10,,'[2]. Threat Intelligence Management'
                                DB 10,'[3]. Cybersecurity in the Face of Upcoming Industry Demands'
                                ;DB 10,'[4]. Juniper Smart Session Router and Mission First Networks'
                                DB 10,'[-1]. EXIT'
                                DB 10,'[0]. BACK TO PREV MENU$'
        
        ;CTF COMPETITION MENU LIST
        CTFMENULIST             DB 'CTF COMPETITION MENU:'
                                DB 10,'[1]. THS CTF 2022'
                                DB 10,'[2]. ASIS CTF Quals 2022'
                                DB 10,'[3]. Digital Overdose 2022 Autumn CTF'
                                DB 10,'[-1]. EXIT'
                                DB 10,'[0]. BACK TO PREV MENU$'
                                
        
        
        ;INPUT QUESTION MESSAGE
        MENUCHOICE              DB 'Enter your choice: ','$'  ;for select menu
    
        
        EVENTNAME               DB 'EVENT NAME: $'
        EVENTDES                DB 'EVENT DESCRIPTION: $'
        EVENTSLOT               DB 'EVENT SLOT: $'
        EVENTAVASLOT            DB 'EVENT CURRENT AVAILABLE SLOT: $'
        EVNETTME                DB 'EVENT AT: $'   
        EVENTMODE               DB 'EVENT MODE: $'
        EVENTPRICE              DB 'EVENT PRICE: RM $'
        
        
    
    ;===========================
    ;   WEBINAR DETAILS
    ;===========================
        
        ;First webinar
        FIRSTWEBID              DB "1"
        FIRSTWEBNAME            DB 'Ransomware Impact In Cyber IR Strategies$'
        FIRSTWEBDES             DB 'While it is hard to believe, Ransomware is decades old. However, in the last 5+ years its notoriety has grown and it has gone through nearly as many evolutions both in capabilities and the degree of organizational structures behind it. In this session, we’ll cover the changes, what they mean, and how cybersecurity strategies have needed to adapt to match this changing threat. But most importantly, have we learned from our past mistakes?$'
        FIRSTWEBSLOT            DB '100$'                                           ;first webinar total slot     <for display>
        FIRSTWEBTIME            DB '10:30am UTC/GMT+8 Sat 5/11/2022$'            ;first webinar time
        FIRSTWEBMODE            DB 'ONLINE$'                                     ;first webinar mode
        FIRSTWEBAVIALABLESLOT   DB 50                                            ;first webinar available slot (for INC/DEC)
        FIRSTWEBPRICE           DB '8$'                                             ;first webinar price
        FIRSTWEBPRICECal        DW 8                                               ;first webinar price for cal 
         
        ;Second webinar
        SECONDWEBID             DB "2"
        SECONDWEBNAME           DB 'Threat Intelligence Management$'
        SECONDWEBDES            DB 'We’ve gathered cybersecurity and threat intelligence experts to share their strategies, best practices and analysis of the threat intelligence platform. Gain insights to empower your cybersecurity teams to fight cyberthreats.Presented by Kevin Mitnick Cybersecurity Consultant, Author, and CEO of Mitnick Security, Joseph Blankenship VP, Research Director Forrester, Ryan Clough, Sr. Product Manager  Palo Alto Networks and Shravanthi Reddy, Host Sr. ProductMarketing Manager Palo Alto Networks.$'
        SECONDWEBSLOT           DB '50$'                                           ;second webinar total slot     <for display>
        SECONDWEBTIME           DB '8:45am UTC/GMT+8 Wed 2/11/2022$'             ;second webinar time
        SECONDWEBMODE           DB 'ONLINE$'                                     ;second webinar mode
        SECONDWEBAVIALABLESLOT  DB 50                                           ;second webinar available slot (for INC/DEC)
        SECONDWEBPRICE          DB '10$'    
        SECONDWEBPRICECal       DB 10
        
        ;Third webinar 
        THIRDWEBID              DB "3"
        THIRDWEBNAME            DB 'Cybersecurity in the Face of Upcoming Industry Demands$'
        THIRDWEBDES             DB 'Join Geir Inge Jensen, Operations Manager and cybersecurity specialist at Dualog and Torstein Størkersen, Senior Operations Consultant, for this 30-minute webinar where they will provide an essential overview of the threats facing shipping today and how to prepare for upcoming cybersecurity regulations.$'
        THIRDWEBSLOT            DB '100$'                                            ;third webinar total slot     <for display>
        THIRDWEBTIME            DB '3:00pm UTC/GMT+8 Fri 4/11/2022$'              ;third webinar time
        THIRDWEBMODE            DB 'Physical Auditorium 2@Level 6$'               ;third webinar mode
        THIRDWEBAVIALABLESLOT   DB 100                                            ;third webinar available slot (for INC/DEC)
        THIRDWEBPRICE           DB '10$'
        THIRDWEBPRICECal        DB 10 
                
        
    ;===========================
    ;   CTF COMPERTITION DETAILS
    ;===========================
        
        ;First CTF  
        FIRSTCTFID              DB "4"
        FIRSTCTFNAME            DB 'THS CTF 2022$'
        FIRSTCTFDES             DB 'THS CTF 2022 is part of The Hack Summit 2022 conference in Warsaw. This is an entry-level CTF with web, crypto, pwn and more.$'
        FIRSTCTFSLOT            DB '50$'                                            ;first ctf total slot     <for display>
        FIRSTCTFTIME            DB '10:30am UTC/GMT+8 Wed 9/11/2022$'            ;first ctf time
        FIRSTCTFMODE            DB 'ONLINE$'                                     ;first ctf mode
        FIRSTCTFAVIALABLESLOT   DB 50                                            ;first ctf available slot (for INC/DEC)
        FIRSTCTFPRICE           DB 'FREE$'                                             ;first ctf price
        FIRSTCTFPRICECal        DB 0 
         
        ;Second CTF 
        SECONDCTFID             DB "5"
        SECONDCTFNAME           DB 'ASIS CTF Quals 2022$'
        SECONDCTFDES            DB 'This is a Jeopardy-style CTF, and the problems are organized in categories like general security information (Trivia), web hacking, modern cryptography, exploit, forensics, reverse engineering, misc and etc.$'
        SECONDCTFSLOT           DB '50$'                                           ;second ctf total slot     <for display>
        SECONDCTFTIME           DB '8:45am UTC/GMT+8 Wed 2/11/2022$'             ;second ctf time
        SECONDCTFMODE           DB 'ONLINE$'                                     ;second ctf mode
        SECONDCTFAVIALABLESLOT  DB 50                                            ;second ctf available slot (for INC/DEC)
        SECONDCTFPRICE          DB '50$'    
        SECONDCTFPRICECAl       DB 50
        
        ;Third CTF 
        THIRDCTFID              DB "6"
        THIRDCTFNAME            DB 'Digital Overdose 2022 Autumn CTF$'
        THIRDCTFDES             DB 'The Digital Overdose Community brings it fourth community CTF to existence.It is a 2-day jeopardy-style CTF spanning multiple categories such as Web, Pwn, OSINT, Crypto, Stego, etc. Thank you to the Really Awesome CTF Team for hosting the infrastructure for this event.$'
        THIRDCTFSLOT            DB '100$'                                            ;third ctf total slot     <for display>
        THIRDCTFTIME            DB '3:00pm UTC/GMT+8 Mon 31/11/2022$'             ;third ctf time
        THIRDCTFMODE            DB 'Physical Auditorium 3@Level 6$'               ;third ctf mode
        THIRDCTFAVIALABLESLOT   DB 100                                            ;third ctf available slot (for INC/DEC)
        THIRDCTFPRICE           DB '10$' 
        THIRDCTFPRICECal        DB 10   
         
            
    ;=============
    ;  STORAGE
    ;=============
        
        ;for temporary storage/ checking purpose
        MENUTEMP                    DB '?'
        WEBTEMP                     DB '?'
        CTFTEMP                     DB '?' 
        
        EXITCODE            DB "-1$"          ;STOP SYSTEM  
        BACKMAINMENUCODE    DB "0$"           ;BACK TO MAIN MENU
        BACKTOPREVMENU      DB "9$"           ;BACK TO PREV 
        
        
    
    ;=====================
    ;  Customer Detail
    ;=====================
        CONFIRMBOOKING           DB 'Do you comfirm booking<1-Yes, 2-No>: $'
        COMFIRMTEMP              DB '?'
        
        ;question                                                          
        QCUSNAME                 DB 'Enter your name: $'
        QCUSTP                   DB 'Enter your tp number: $'
        QQUANTITY                DB 'Quantity: $'
        QEVENTPRICE              DB 0
        QSUBTTOAL                DB 0
        QTOTAL                   DB 0
        QTOTALTITLE              DB 'TOTAL PRICE: RM $'
        
        
    ;======================
    ;  CUSTOMER DATABASE
    ;======================
        C1NAME          DB 100 dup(0)
        C1TP            DB 100 dup(0)
        C1EVENTID       DB ""
        C1EVENTNAME     DB ""
        C1EVENTTIME     DB ""
        C1EVENTMODE     DB ""
        C1QUANTITY      DB '?'
        C1TOTALPRICE    DB 100 dup(0) 
        
        
        C2NAME          DB 100 dup(0)
        C2TP            DB 100 dup(0)
        C2EVENT         DB 100 dup(0)
        C2EVENTNAME     DB 100 dup(0)
        C2EVENTTIME     DB 100 dup(0)
        C2EVENTMODE     DB 'CTF COMPETITION $'
        C2QUANTITY      DB 100 dup(0)
        C2TOTALPRICE    DB 100 dup(0)
        
        
        OUTLINE         DB '============================================================$'
        OUTLINEBOOKING  DB 10,'---------------------[BOOKING DETAILS]----------------------$'  
        OUTLINEORDER    DB 10,'---------------------[ORDER DETAILS]-----------------------$' 
        OUTNAME         DB 'NAME: $'
        OUTTP           DB 'TP NUMBER: $'
        
        
        
        
        
        
        

;============================================================================================================
;                           MAIN CODEING 
;============================================================================================================
.CODE         ;declare CODE segment           
  
    MAIN PROC ;MAIN function start here
    
    
    ;initialise DS register
    MOV AX, @DATA
    MOV DS, AX 
    
    
    ;SYSTEM TITLE WORD DISYAPLT - MIDDLE
    MOV AH, 13H
    MOV AL, 0
    MOV BH, 0
    MOV BL, 25 ;BACKGROUND COLOR 0-NONE 
    MOV CX, 25 ;BACKGROUND COLOR LENGHT
    MOV DH, 1 ; TOP TO BOTTOM
    MOV DL, 17 ; LEFT TO RIGHT
    MOV BP, OFFSET MSG
    INT 10H
    
    ;start main menu   
    JMP MENU
    
    
MENU:   

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
        
    ;display main menu list 
    MOV AH, 09H
    LEA DX, MAINMENULIST
    INT 21H 
            
            
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    
    ;display menu input question
    MOV AH, 09H
    LEA DX, MENUCHOICE
    INT 21H   
     
    
    ;get main menu input 
    MOV AH, 01H             ;accept a character for choose the main menu
    INT 21H  
    MOV MENUTEMP, AL        ;store to temporary storage
    
    
    ;COMPARE THE SELECTION FROM MAIN MENU
    CMP MENUTEMP, 31H       ;If choice 1
    JE  WEBINAR             ;jump to webinar session
            
            
    CMP MENUTEMP, 32H       ;If choice 2
    JE  CTF                 ;jump to CTF session
    
    
    CMP MENUTEMP, 2DH       ;If choice is -
    JE  exit
    



WEBINAR:              ;jump to here when choose Webinar from main menu
    
    ;CLEAR BUFFER
    MOV MENUTEMP, '?'
    MOV WEBTEMP, '?'
    MOV CTFTEMP, '?'
      
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    
    ;display webinar menu list 
    MOV AH, 09H
    LEA DX, WEBINARMENULIST
    INT 21H 
            
            
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    
    ;display menu input question
    MOV AH, 09H
    LEA DX, MENUCHOICE
    INT 21H      
    
    
    ;get webinar menu input 
    MOV AH, 01H            ;accept a character for choose the main menu
    INT 21H  
    MOV WEBTEMP, AL        ;store to temporary storage 
    
    
    ;COMPARE THE SELECTION FROM MAIN MENU
    
    
    CMP WEBTEMP, 31H        ;If choice 1
    JE  FIRSTWEB 
    
    CMP WEBTEMP, 32H        ;If choice 2
    JE  SECONDWEBINAR 
    
    CMP WEBTEMP, 33H        ;If choice 3
    JE  THIRDWEB 
 
    
    CMP WEBTEMP, 00H        ;If choice 0
    JMP MENU           ;jump to webinar session
         
         
    CMP WEBTEMP, 2DH       ;If choice is -
    JE  exit
                
                
                
                
;===============
; Webinar List
;===============


FIRSTWEB:     
     
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    ;display EVENT NAME:
    MOV AH, 09H
    LEA DX, EVENTNAME               
    INT 21H
                         
    ;display get from top data list
    MOV AH, 09H
    LEA DX, FIRSTWEBNAME
    INT 21H
            
            
             
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H        
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display EVENT DESCRIPTION:
    MOV AH, 09H
    LEA DX, EVENTDES                             
    INT 21H   
    
    ;display get from top data list
    MOV AH, 09H
    LEA DX, FIRSTWEBDES             
    INT 21H           
             
            
            
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display EVENT SLOT:
    MOV AH, 09H
    LEA DX, EVENTSLOT                                        
    INT 21H     
              
    ;display get from top data list 
    MOV AH, 09H     
    ;MOV AX, FIRSTWEBSLOT
    LEA DX, FIRSTWEBSLOT                         
    INT 21H             
       
       
       
           
           
    ;=================================================
    ;       END AVAILABLE SLOT
    ;=================================================        
            
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
     
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
           
    ;display EVENT AVAIALBLE SLOT:
    MOV AH, 09H
    LEA DX, EVENTAVASLOT  ;event                                                    
    INT 21H      
     
    
              
    ;GET THE VALUE        
    MOV DL, FIRSTWEBSLOT;STORE DATA TO DL
    MOV AL, DL          ;MOVE DL DATA TO AL 
    AAM 
    ADD AX, 3030H       ;binary's unzip BCD code transfer to ASCII code
     
     
    MOV DH, AL  ;assign '5' to DH
    MOV DL, AH  ;assign '0' to DL
     
     
    MOV AH, 2H  ;display first digit
    INT 21H
     
        
    MOV DL, DH  ;assign DH '5' value to DL
    MOV AH, 2H  ;display second digit
    INT 21H   
       
    ;=================================================
    ;       END AVAILABLE SLOT
    ;=================================================     
            
      
      
      
            
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display EVENT TIME:
    MOV AH, 09H
    LEA DX, EVNETTME                                                                    
    INT 21H    
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, FIRSTWEBTIME                                        
    INT 21H
     
  
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT MODE:
    MOV AH, 09H
    LEA DX, EVENTMODE                                                                                
    INT 21H
                        
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, FIRSTWEBMODE                                                    
    INT 21H
        
        
        
        
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT PRICE:
    MOV AH, 09H
    LEA DX, EVENTPRICE                                                                                 
    INT 21H      
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, FIRSTWEBPRICE                                                    
    INT 21H 
    
    
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display comfirm booking, if no back prev menu:
    MOV AH, 09H
    LEA DX, CONFIRMBOOKING                                                                                 
    INT 21H
    
    ;get comfirm input
    MOV AH, 01H             ;accept a character from the question
    INT 21H  
    MOV COMFIRMTEMP, AL
    
    
    
    ;compare input (1-Yes,booking / 2-No,back to prev web menu)
    
                      
    CMP COMFIRMTEMP, 32H ; if choice 2
    JE  WEBINAR    
    
    CMP COMFIRMTEMP, 31H ; if choice 1   
    
    
    
    ;===================================
    ;        CONFIRM BOOKING PART
    ;=================================== 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;display header line
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H  
    
    
    MOV AH, 09H
    LEA DX, OUTLINEBOOKING                                                                                                  
    INT 21H 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display outline header
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
           
           
    ;===============================
    ;start collection customer data
    ;===============================
          
          
    ;display CUSTOMER NAME QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSNAME                                                                                                  
    INT 21H
    
    ;get CUSTOMER NAME 
    MOV C1NAME[0], 21
    MOV AH, 0AH      ;accept a STRING from the question
    LEA DX, C1NAME
    INT 21H
    
             
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display CUSTOMER TP number QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSTP                                                                                                  
    INT 21H
    
    ;get CUSTOMER TPnumber     
    MOV C1TP[0], 21
    MOV AH, 0AH
    LEA DX, C1TP
    INT 21H
           
                 
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    
    ;DISPLAY & get CUSTOMER quantity 
    MOV AH, 9             ;accept a STRING from the question
    LEA DX, QQUANTITY
    INT 21H 
 

    ;==================
    ;calculate the price
    ;=====================
     XOR AX, AX ;reset value
     
     CALL INDEC ;to ensure user input is number

     
     MOV C1QUANTITY, AL  ;store quantity
     
      
     
     MUL FIRSTWEBPRICECal
     
     MOV BX, AX  ;BX = AX * PRICE 
    
          
     
     MOV AX, BX
     MOV DX, AX  
          
                
     JMP TOTALPRICE




;Second webinar
SECONDWEBINAR:     
     
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    ;display EVENT NAME:
    MOV AH, 09H
    LEA DX, EVENTNAME               
    INT 21H
                         
    ;display get from top data list
    MOV AH, 09H
    LEA DX, SECONDWEBNAME           
    INT 21H
            
            
             
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H        
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display EVENT DESCRIPTION:
    MOV AH, 09H
    LEA DX, EVENTDES                             
    INT 21H   
    
    ;display get from top data list
    MOV AH, 09H
    LEA DX, SECONDWEBDES                         
    INT 21H           
             
            
            
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display EVENT SLOT:
    MOV AH, 09H
    LEA DX, EVENTSLOT                                        
    INT 21H     
              
    ;display get from top data list 
    MOV AH, 09H     
    LEA DX, SECONDWEBSLOT                                    
    INT 21H             
       
     
            
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display EVENT TIME:
    MOV AH, 09H
    LEA DX, EVNETTME                                                                    
    INT 21H    
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, SECONDWEBTIME                                                   
    INT 21H
     
  
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT MODE:
    MOV AH, 09H
    LEA DX, EVENTMODE                                                                                
    INT 21H
                        
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, SECONDWEBMODE                                                               
    INT 21H
        
        
        
        
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT PRICE:
    MOV AH, 09H
    LEA DX, EVENTPRICE                                                                                 
    INT 21H      
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, SECONDWEBPRICE                                                              
    INT 21H 
    
    
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display comfirm booking, if no back prev menu:
    MOV AH, 09H
    LEA DX, CONFIRMBOOKING                                                                                 
    INT 21H
    
    ;get comfirm input
    MOV AH, 01H             ;accept a character from the question
    INT 21H  
    MOV COMFIRMTEMP, AL
    
    
    
    ;compare input (1-Yes,booking / 2-No,back to prev web menu)
    
                      
    CMP COMFIRMTEMP, 32H ; if choice 2
    JE  WEBINAR    
    
    CMP COMFIRMTEMP, 31H ; if choice 1   
    
    
    
    ;===================================
    ;        CONFIRM BOOKING PART
    ;=================================== 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;display header line
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H  
    
    
    MOV AH, 09H
    LEA DX, OUTLINEBOOKING                                                                                                  
    INT 21H 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display outline header
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
           
           
    ;===============================
    ;start collection customer data
    ;===============================
          
          
    ;display CUSTOMER NAME QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSNAME                                                                                                  
    INT 21H
    
    ;get CUSTOMER NAME 
    MOV C1NAME[0], 21
    MOV AH, 0AH      ;accept a STRING from the question
    LEA DX, C1NAME
    INT 21H
    
             
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display CUSTOMER TP number QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSTP                                                                                                  
    INT 21H
    
    ;get CUSTOMER TPnumber     
    MOV C1TP[0], 21
    MOV AH, 0AH
    LEA DX, C1TP
    INT 21H
           
                 
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    
    ;DISPLAY & get CUSTOMER quantity 
    MOV AH, 9             ;accept a STRING from the question
    LEA DX, QQUANTITY
    INT 21H 
 
     
    ;===========================
    ;INSERT CURRENT EVENT DETAILS
    ;=============================
    MOV BL, SECONDWEBID
    MOV C1EVENTID, BL 
    
    
    
    ;MOV BL, EVENTMODEWEB
    ;MOV C1EVENTMODE, BL      
    
     
    
    
         
         
    
    ;==================
    ;calculate the price
    ;=====================
     XOR AX, AX ;reset value
     
     CALL INDEC ;to ensure user input is number

     
     MOV C1QUANTITY, AL  ;store quantity
     
      
     
     MUL SECONDWEBPRICECal       
     
     MOV BX, AX  ;BX = AX * PRICE 
    
          
     
     MOV AX, BX
     MOV DX, AX  
          
                
     JMP TOTALPRICE
     
     
     
     
     
     
;Third webinar     

THIRDWEB:     
     
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    ;display EVENT NAME:
    MOV AH, 09H
    LEA DX, EVENTNAME               
    INT 21H
                         
    ;display get from top data list
    MOV AH, 09H
    LEA DX, THIRDWEBNAME            
    INT 21H
            
            
             
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H        
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display EVENT DESCRIPTION:
    MOV AH, 09H
    LEA DX, EVENTDES                             
    INT 21H   
    
    ;display get from top data list
    MOV AH, 09H
    LEA DX, THIRDWEBDES                          
    INT 21H           
             
            
            
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display EVENT SLOT:
    MOV AH, 09H
    LEA DX, EVENTSLOT                                        
    INT 21H     
              
    ;display get from top data list 
    MOV AH, 09H     
    LEA DX, THIRDWEBSLOT                                     
    INT 21H             
       
      
      
            
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display EVENT TIME:
    MOV AH, 09H
    LEA DX, EVNETTME                                                                    
    INT 21H    
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, THIRDWEBTIME                                                    
    INT 21H
     
  
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT MODE:
    MOV AH, 09H
    LEA DX, EVENTMODE                                                                                
    INT 21H
                        
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, THIRDWEBMODE                                                                
    INT 21H
        
        
        
        
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT PRICE:
    MOV AH, 09H
    LEA DX, EVENTPRICE                                                                                 
    INT 21H      
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, THIRDWEBPRICE                                                               
    INT 21H 
    
    
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display comfirm booking, if no back prev menu:
    MOV AH, 09H
    LEA DX, CONFIRMBOOKING                                                                                 
    INT 21H
    
    ;get comfirm input
    MOV AH, 01H             ;accept a character from the question
    INT 21H  
    MOV COMFIRMTEMP, AL
    
    
    
    ;compare input (1-Yes,booking / 2-No,back to prev web menu)
    
                      
    CMP COMFIRMTEMP, 32H ; if choice 2
    JE  WEBINAR    
    
    CMP COMFIRMTEMP, 31H ; if choice 1   
    
    
    
    ;===================================
    ;        CONFIRM BOOKING PART
    ;=================================== 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;display header line
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H  
    
    
    MOV AH, 09H
    LEA DX, OUTLINEBOOKING                                                                                                  
    INT 21H 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display outline header
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
           
           
    ;===============================
    ;start collection customer data
    ;===============================
          
          
    ;display CUSTOMER NAME QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSNAME                                                                                                  
    INT 21H
    
    ;get CUSTOMER NAME 
    MOV C1NAME[0], 21
    MOV AH, 0AH      ;accept a STRING from the question
    LEA DX, C1NAME
    INT 21H
    
             
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display CUSTOMER TP number QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSTP                                                                                                  
    INT 21H
    
    ;get CUSTOMER TPnumber     
    MOV C1TP[0], 21
    MOV AH, 0AH
    LEA DX, C1TP
    INT 21H
           
                 
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    
    ;DISPLAY & get CUSTOMER quantity 
    MOV AH, 9             ;accept a STRING from the question
    LEA DX, QQUANTITY
    INT 21H 
 
     
    ;===========================
    ;INSERT CURRENT EVENT DETAILS
    ;=============================
    MOV BL, THIRDWEBID 
    MOV C1EVENTID, BL 
    
    
    ;MOV BL, EVENTMODEWEB
    ;MOV C1EVENTMODE, BL      
    
     
    
    
        
    
    ;==================
    ;calculate the price
    ;=====================
     XOR AX, AX ;reset value
     
     CALL INDEC ;to ensure user input is number

     
     MOV C1QUANTITY, AL  ;store quantity
     
      
     
     MUL THIRDWEBPRICECal                   
     
     MOV BX, AX  ;BX = AX * PRICE 
    
          
     
     MOV AX, BX
     MOV DX, AX  
          
                
     JMP TOTALPRICE      
     
     
     
     
      
      
      
      
    
CTF:                  ;jump to here when choose CTF Competition from main menu   
    ;CLEAR BUFFER
    MOV MENUTEMP, '?'
    MOV WEBTEMP, '?'
    MOV CTFTEMP, '?'

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    
    ;display webinar menu list 
    MOV AH, 09H
    LEA DX, CTFMENULIST
    INT 21H 
            
            
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    
    ;display menu input question
    MOV AH, 09H
    LEA DX, MENUCHOICE
    INT 21H      
    
    
    ;get webinar menu input 
    MOV AH, 01H            ;accept a character for choose the main menu
    INT 21H  
    MOV CTFTEMP, AL        ;store to temporary storage 
    
    
    ;COMPARE THE SELECTION FROM MAIN MENU 
    
    
    CMP CTFTEMP, 31H        ;If choice 1
    JE  FIRSTCTF 
    
    CMP CTFTEMP, 32H        ;If choice 2
    JE  SECONDCTF 
    
    CMP CTFTEMP, 33H        ;If choice 3
    JE  THIRDCTF 
    
    
    
    
    CMP CTFTEMP, 2DH       ;If choice is -
    JE  exit
        
    CMP CTFTEMP, 00H        ;If choice 0
    JMP MENU           ;jump to webinar session   
    
    
    
;First CTF    

FIRSTCTF:     
     
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    ;display EVENT NAME:
    MOV AH, 09H
    LEA DX, EVENTNAME               
    INT 21H
                         
    ;display get from top data list
    MOV AH, 09H
    LEA DX, FIRSTCTFNAME                        
    INT 21H
            
            
             
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H        
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display EVENT DESCRIPTION:
    MOV AH, 09H
    LEA DX, EVENTDES                             
    INT 21H   
    
    ;display get from top data list
    MOV AH, 09H
    LEA DX, FIRSTCTFDES                                       
    INT 21H           
             
            
            
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display EVENT SLOT:
    MOV AH, 09H
    LEA DX, EVENTSLOT                                        
    INT 21H     
              
    ;display get from top data list 
    MOV AH, 09H     
    LEA DX, FIRSTCTFSLOT                                                 
    INT 21H             
       
      
      
            
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display EVENT TIME:
    MOV AH, 09H
    LEA DX, EVNETTME                                                                    
    INT 21H    
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, FIRSTCTFTIME                                                                
    INT 21H
     
  
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT MODE:
    MOV AH, 09H
    LEA DX, EVENTMODE                                                                                
    INT 21H
                        
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, FIRSTCTFMODE                                                                            
    INT 21H
        
        
        
        
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT PRICE:
    MOV AH, 09H
    LEA DX, EVENTPRICE                                                                                 
    INT 21H      
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, FIRSTCTFPRICE                                                                          
    INT 21H 
    
    
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display comfirm booking, if no back prev menu:
    MOV AH, 09H
    LEA DX, CONFIRMBOOKING                                                                                 
    INT 21H
    
    ;get comfirm input
    MOV AH, 01H             ;accept a character from the question
    INT 21H  
    MOV COMFIRMTEMP, AL
    
    
    
    ;compare input (1-Yes,booking / 2-No,back to prev web menu)
    
                      
    CMP COMFIRMTEMP, 32H ; if choice 2
    JE  CTF   
    
    CMP COMFIRMTEMP, 31H ; if choice 1   
    
    
    
    ;===================================
    ;        CONFIRM BOOKING PART
    ;=================================== 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;display header line
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H  
    
    
    MOV AH, 09H
    LEA DX, OUTLINEBOOKING                                                                                                  
    INT 21H 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display outline header
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
           
           
    ;===============================
    ;start collection customer data
    ;===============================
          
          
    ;display CUSTOMER NAME QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSNAME                                                                                                  
    INT 21H
    
    ;get CUSTOMER NAME 
    MOV C1NAME[0], 21
    MOV AH, 0AH      ;accept a STRING from the question
    LEA DX, C1NAME
    INT 21H
    
             
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display CUSTOMER TP number QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSTP                                                                                                  
    INT 21H
    
    ;get CUSTOMER TPnumber     
    MOV C1TP[0], 21
    MOV AH, 0AH
    LEA DX, C1TP
    INT 21H
           
                 
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    
    ;DISPLAY & get CUSTOMER quantity 
    MOV AH, 9             ;accept a STRING from the question
    LEA DX, QQUANTITY
    INT 21H 
 
     
    ;===========================
    ;INSERT CURRENT EVENT DETAILS
    ;=============================
    MOV BL, FIRSTCTFID
    MOV C1EVENTID, BL 
    
    
    
    ;MOV BL, EVENTMODEWEB
    ;MOV C1EVENTMODE, BL      
    
     
    
    
         
         
    
    ;==================
    ;calculate the price
    ;=====================
     XOR AX, AX ;reset value
     
     CALL INDEC ;to ensure user input is number

     
     MOV C1QUANTITY, AL  ;store quantity
     
      
     
     MUL FIRSTCTFPRICECal                  
     
     MOV BX, AX  ;BX = AX * PRICE 
    
          
     
     MOV AX, BX
     MOV DX, AX  
          
                
     JMP TOTALPRICE
     
     
     

;SECOND webinar     

SECONDCTF:     
     
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    ;display EVENT NAME:
    MOV AH, 09H
    LEA DX, EVENTNAME               
    INT 21H
                         
    ;display get from top data list
    MOV AH, 09H
    LEA DX, SECONDCTFNAME                       
    INT 21H
            
            
             
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H        
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display EVENT DESCRIPTION:
    MOV AH, 09H
    LEA DX, EVENTDES                             
    INT 21H   
    
    ;display get from top data list
    MOV AH, 09H
    LEA DX, SECONDCTFDES                                      
    INT 21H           
             
            
            
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display EVENT SLOT:
    MOV AH, 09H
    LEA DX, EVENTSLOT                                        
    INT 21H     
              
    ;display get from top data list 
    MOV AH, 09H     
    LEA DX, SECONDCTFSLOT                                                
    INT 21H             
       
      
      
            
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display EVENT TIME:
    MOV AH, 09H
    LEA DX, EVNETTME                                                                    
    INT 21H    
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, SECONDCTFTIME                                                               
    INT 21H
     
  
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT MODE:
    MOV AH, 09H
    LEA DX, EVENTMODE                                                                                
    INT 21H
                        
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, SECONDCTFMODE                                                                           
    INT 21H
        
        
        
        
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT PRICE:
    MOV AH, 09H
    LEA DX, EVENTPRICE                                                                                 
    INT 21H      
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, SECONDCTFPRICE                                                                         
    INT 21H 
    
    
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display comfirm booking, if no back prev menu:
    MOV AH, 09H
    LEA DX, CONFIRMBOOKING                                                                                 
    INT 21H
    
    ;get comfirm input
    MOV AH, 01H             ;accept a character from the question
    INT 21H  
    MOV COMFIRMTEMP, AL
    
    
    
    ;compare input (1-Yes,booking / 2-No,back to prev web menu)
    
                      
    CMP COMFIRMTEMP, 32H ; if choice 2
    JE  CTF    
    
    CMP COMFIRMTEMP, 31H ; if choice 1   
    
    
    
    ;===================================
    ;        CONFIRM BOOKING PART
    ;=================================== 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;display header line
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H  
    
    
    MOV AH, 09H
    LEA DX, OUTLINEBOOKING                                                                                                  
    INT 21H 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display outline header
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
           
           
    ;===============================
    ;start collection customer data
    ;===============================
          
          
    ;display CUSTOMER NAME QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSNAME                                                                                                  
    INT 21H
    
    ;get CUSTOMER NAME 
    MOV C1NAME[0], 21
    MOV AH, 0AH      ;accept a STRING from the question
    LEA DX, C1NAME
    INT 21H
    
             
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display CUSTOMER TP number QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSTP                                                                                                  
    INT 21H
    
    ;get CUSTOMER TPnumber     
    MOV C1TP[0], 21
    MOV AH, 0AH
    LEA DX, C1TP
    INT 21H
           
                 
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    
    ;DISPLAY & get CUSTOMER quantity 
    MOV AH, 9             ;accept a STRING from the question
    LEA DX, QQUANTITY
    INT 21H 
 
     
    ;===========================
    ;INSERT CURRENT EVENT DETAILS
    ;=============================
    MOV BL, SECONDCTFID
    MOV C1EVENTID, BL 
    
    
    ;MOV BL, EVENTMODEWEB
    ;MOV C1EVENTMODE, BL      
    
     
    
    
         
         
    
    ;==================
    ;calculate the price
    ;=====================
     XOR AX, AX ;reset value
     
     CALL INDEC ;to ensure user input is number

     
     MOV C1QUANTITY, AL  ;store quantity
     
      
     
     MUL SECONDCTFPRICECAl                   
     
     MOV BX, AX  ;BX = AX * PRICE 
    
          
     
     MOV AX, BX
     MOV DX, AX  
          
                
     JMP TOTALPRICE
     
     
     
     
     
     
;Third CTF    

THIRDCTF:     
     
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 

    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    ;display EVENT NAME:
    MOV AH, 09H
    LEA DX, EVENTNAME               
    INT 21H
                         
    ;display get from top data list
    MOV AH, 09H
    LEA DX, THIRDCTFNAME                        
    INT 21H
            
            
             
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H        
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display EVENT DESCRIPTION:
    MOV AH, 09H
    LEA DX, EVENTDES                             
    INT 21H   
    
    ;display get from top data list
    MOV AH, 09H
    LEA DX, THIRDCTFDES                                       
    INT 21H           
             
            
            
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display EVENT SLOT:
    MOV AH, 09H
    LEA DX, EVENTSLOT                                        
    INT 21H     
              
    ;display get from top data list 
    MOV AH, 09H     
    LEA DX, THIRDCTFSLOT                                                 
    INT 21H             
       
      
      
            
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display EVENT TIME:
    MOV AH, 09H
    LEA DX, EVNETTME                                                                    
    INT 21H    
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, THIRDCTFTIME                                                                
    INT 21H
     
  
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT MODE:
    MOV AH, 09H
    LEA DX, EVENTMODE                                                                                
    INT 21H
                        
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, THIRDCTFMODE                                                                            
    INT 21H
        
        
        
        
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
                 
    ;display EVENT PRICE:
    MOV AH, 09H
    LEA DX, EVENTPRICE                                                                                 
    INT 21H      
              
    ;display get from top data list 
    MOV AH, 09H
    LEA DX, THIRDCTFPRICE                                                                          
    INT 21H 
    
    
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;display comfirm booking, if no back prev menu:
    MOV AH, 09H
    LEA DX, CONFIRMBOOKING                                                                                 
    INT 21H
    
    ;get comfirm input
    MOV AH, 01H             ;accept a character from the question
    INT 21H  
    MOV COMFIRMTEMP, AL
    
    
    
    ;compare input (1-Yes,booking / 2-No,back to prev web menu)
    
                      
    CMP COMFIRMTEMP, 32H ; if choice 2
    JE  CTF    
    
    CMP COMFIRMTEMP, 31H ; if choice 1   
    
    
    
    ;===================================
    ;        CONFIRM BOOKING PART
    ;=================================== 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    ;display header line
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H  
    
    
    MOV AH, 09H
    LEA DX, OUTLINEBOOKING                                                                                                  
    INT 21H 
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
    ;display outline header
    MOV AH, 09H
    LEA DX, OUTLINE                                                                                                  
    INT 21H
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
           
           
    ;===============================
    ;start collection customer data
    ;===============================
          
          
    ;display CUSTOMER NAME QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSNAME                                                                                                  
    INT 21H
    
    ;get CUSTOMER NAME 
    MOV C1NAME[0], 21
    MOV AH, 0AH      ;accept a STRING from the question
    LEA DX, C1NAME
    INT 21H
    
             
             
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    ;display CUSTOMER TP number QUESTION
    MOV AH, 09H
    MOV DX, OFFSET QCUSTP                                                                                                  
    INT 21H
    
    ;get CUSTOMER TPnumber     
    MOV C1TP[0], 21
    MOV AH, 0AH
    LEA DX, C1TP
    INT 21H
           
                 
                 
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H
           
    
    ;DISPLAY & get CUSTOMER quantity 
    MOV AH, 9             ;accept a STRING from the question
    LEA DX, QQUANTITY
    INT 21H 
 
     
    ;===========================
    ;INSERT CURRENT EVENT DETAILS
    ;=============================
    MOV BL, THIRDCTFID
    MOV C1EVENTID, BL 
    
    
    ;MOV BL, EVENTMODEWEB
    ;MOV C1EVENTMODE, BL      
    
     
    
    
         
         
    
    ;==================
    ;calculate the price
    ;=====================
     XOR AX, AX ;reset value
     
     CALL INDEC ;to ensure user input is number

     
     MOV C1QUANTITY, AL  ;store quantity
     
      
     
     MUL THIRDCTFPRICECal                   
     
     MOV BX, AX  ;BX = AX * PRICE 
    
          
     
     MOV AX, BX
     MOV DX, AX  
          
                
     JMP TOTALPRICE
                      
                      
                                    
                      
                      
                      
    
BACKPREV:             ;jump to here when choose EXIT from user payment 
    
    
BACKMAIN:             ;jump to here when choose EXIT from Webinar/CTF  ;check whether it is -1 for exit
    JMP MENU


ORDER:
    ;===========================
    ;       DISPLAY ORDER
    ;===========================
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H   
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H    
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H   
     
    ;DISPLAY LINE ===================== 
    MOV AH, 09H
    LEA DX, OUTLINE         
    INT 21H 
    
    ;DISPLAY LINE ----BOOKING DETAIL----- 
    MOV AH, 09H
    LEA DX, OUTLINEORDER           
    INT 21H 
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    
    ;DISPLAY LINE ===================== 
    MOV AH, 09H
    LEA DX, OUTLINE         
    INT 21H
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
       
         
    ;======================     
    ;DISPLAY NAME
    
     
    MOV AH, 09H
    LEA DX, OUTNAME
    INT 21H
    
    XOR BX, BX
    MOV BL, C1NAME[1]
    MOV C1NAME[BX+2], '$'
    
    
    MOV AH, 09H
    LEA DX, C1NAME[2]
    INT 21H 
    
    
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    
    
    ;======================     
    ;DISPLAY TP NUMBER
    
     
    MOV AH, 09H
    LEA DX, OUTTP
    INT 21H
    
    XOR BX, BX
    MOV BL, C1TP[1]
    MOV C1TP[BX+2], '$'
    
    
    MOV AH, 09H
    LEA DX, C1TP[2]
    INT 21H 
    
    
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H 
    
     
     
    ;===========================
    ;display quantity
    ;===========================
    
    MOV AH, 9             ;accept a STRING from the question
    LEA DX, QQUANTITY
    INT 21H 
    
    
    MOV AH, 02H
    MOV DL, C1QUANTITY 
    ADD DL, "0"     ; Integer to single-digit ASCII character
    INT 21H  
    
    
    
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    
    ;===========================
    ;display EVENT
    ;===========================
        
   
    ;break new line
    MOV AH, 09H
    LEA DX, NEWLINE
    INT 21H  
    
    
    ;DISPLAY LINE ===================== 
    MOV AH, 09H
    LEA DX, OUTLINE         
    INT 21H 
    
        
    JMP exit    
    
    

TOTALPRICE:

    ;===========================
    ;display TOTAL
    ;===========================
    ;Display total word
    MOV AH, 9
    LEA DX, QTOTALTITLE
    INT 21H 
    
    
    XOR AX, AX
    
    MOV AX, BX
    CALL OUTDEC 
           
    
    
    JMP ORDER 
    
    
    
exit:                 ;EXIT SYSTEM
    
    MOV AH, 01H       ;accept a character from choosing the menu
    INT 21H
         
      
    MOV AH, 4CH  
    INT 21H           ;request for proper exit
    MAIN ENDP         ;END the MAIN function 
 
    include indec.asm
    include outdec.asm
    
END MAIN
    
                             