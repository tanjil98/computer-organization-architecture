
.MODEL SMALL
.STACK 100H

.DATA
 VOWEL DB 0DH,0AH,'GIVE INPUT IS A VOWEL$'
 NOT_VOWEL DB 0DH,0AH,'GIVEN INPUT IS NOT A VOWEL$'
 
.CODE
MAIN PROC
 
 MOV AX,@DATA
 MOV DS,AX
 
 MOV AH,1
 INT 21H
 CMP AL,'A'
 JE VL
 CMP AL,'E'
 JE VL
 CMP AL,'I'
 JE VL
 CMP AL,'O'
 JE VL
 CMP AL,'U'
 JE VL
 CMP AL,'a'
 JE VL
 CMP AL,'e'
 JE VL
 CMP AL,'i'
 JE VL
 CMP AL,'o'
 JE VL
 CMP AL,'u'
 JE VL
  LEA DX,NOT_VOWEL
  MOV AH,9
  INT 21H
  JMP EXIT
  
 VL:
  LEA DX,VOWEL
  MOV AH,9
  INT 21H
  
 EXIT:
  MOV AH,4CH
  INT 21H
 MAIN ENDP
END MAIN


