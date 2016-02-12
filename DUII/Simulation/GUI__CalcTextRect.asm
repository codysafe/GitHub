﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Core\GUI__CalcTextRect.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI__CalcTextRect
EXTRN	_GUI_GetFontDistY:PROC
EXTRN	_GUI_GetStringDistX:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\core\gui__calctextrect.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUI__CalcTextRect
_TEXT	SEGMENT
tv87 = -244						; size = 4
tv68 = -244						; size = 4
_TextHeight$8348 = -44					; size = 4
_TextWidth$8347 = -32					; size = 4
_yPos$8346 = -20					; size = 4
_xPos$8345 = -8						; size = 4
_pText$ = 8						; size = 4
_pTextRectIn$ = 12					; size = 4
_pTextRectOut$ = 16					; size = 4
_TextAlign$ = 20					; size = 4
_GUI__CalcTextRect PROC					; COMDAT
; Line 35
	push	ebp
	mov	ebp, esp
	sub	esp, 244				; 000000f4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-244]
	mov	ecx, 61					; 0000003dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 36
	cmp	DWORD PTR _pText$[ebp], 0
	je	$LN12@GUI__CalcT
; Line 40
	mov	eax, DWORD PTR _pText$[ebp]
	push	eax
	call	_GUI_GetStringDistX
	add	esp, 4
	mov	DWORD PTR _TextWidth$8347[ebp], eax
; Line 41
	mov	eax, DWORD PTR _TextAlign$[ebp]
	and	eax, 3
	mov	DWORD PTR tv68[ebp], eax
	cmp	DWORD PTR tv68[ebp], 1
	je	SHORT $LN8@GUI__CalcT
	cmp	DWORD PTR tv68[ebp], 2
	je	SHORT $LN9@GUI__CalcT
	jmp	SHORT $LN7@GUI__CalcT
$LN9@GUI__CalcT:
; Line 43
	mov	eax, DWORD PTR _pTextRectIn$[ebp]
	movsx	ecx, WORD PTR [eax]
	mov	edx, DWORD PTR _pTextRectIn$[ebp]
	movsx	eax, WORD PTR [edx+4]
	mov	edx, DWORD PTR _pTextRectIn$[ebp]
	movsx	edx, WORD PTR [edx]
	sub	eax, edx
	add	eax, 1
	sub	eax, DWORD PTR _TextWidth$8347[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	add	ecx, eax
	mov	DWORD PTR _xPos$8345[ebp], ecx
; Line 44
	jmp	SHORT $LN10@GUI__CalcT
$LN8@GUI__CalcT:
; Line 46
	mov	eax, DWORD PTR _pTextRectIn$[ebp]
	movsx	ecx, WORD PTR [eax+4]
	sub	ecx, DWORD PTR _TextWidth$8347[ebp]
	add	ecx, 1
	mov	DWORD PTR _xPos$8345[ebp], ecx
; Line 47
	jmp	SHORT $LN10@GUI__CalcT
$LN7@GUI__CalcT:
; Line 49
	mov	eax, DWORD PTR _pTextRectIn$[ebp]
	movsx	ecx, WORD PTR [eax]
	mov	DWORD PTR _xPos$8345[ebp], ecx
$LN10@GUI__CalcT:
; Line 53
	call	_GUI_GetFontDistY
	mov	DWORD PTR _TextHeight$8348[ebp], eax
; Line 54
	mov	eax, DWORD PTR _TextAlign$[ebp]
	and	eax, 12					; 0000000cH
	mov	DWORD PTR tv87[ebp], eax
	cmp	DWORD PTR tv87[ebp], 4
	je	SHORT $LN3@GUI__CalcT
	cmp	DWORD PTR tv87[ebp], 12			; 0000000cH
	je	SHORT $LN4@GUI__CalcT
	jmp	SHORT $LN2@GUI__CalcT
$LN4@GUI__CalcT:
; Line 56
	mov	eax, DWORD PTR _pTextRectIn$[ebp]
	movsx	ecx, WORD PTR [eax+2]
	mov	edx, DWORD PTR _pTextRectIn$[ebp]
	movsx	eax, WORD PTR [edx+6]
	mov	edx, DWORD PTR _pTextRectIn$[ebp]
	movsx	edx, WORD PTR [edx+2]
	sub	eax, edx
	add	eax, 1
	sub	eax, DWORD PTR _TextHeight$8348[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	add	ecx, eax
	mov	DWORD PTR _yPos$8346[ebp], ecx
; Line 57
	jmp	SHORT $LN5@GUI__CalcT
$LN3@GUI__CalcT:
; Line 59
	mov	eax, DWORD PTR _pTextRectIn$[ebp]
	movsx	ecx, WORD PTR [eax+6]
	sub	ecx, DWORD PTR _TextHeight$8348[ebp]
	add	ecx, 1
	mov	DWORD PTR _yPos$8346[ebp], ecx
; Line 60
	jmp	SHORT $LN5@GUI__CalcT
$LN2@GUI__CalcT:
; Line 63
	mov	eax, DWORD PTR _pTextRectIn$[ebp]
	movsx	ecx, WORD PTR [eax+2]
	mov	DWORD PTR _yPos$8346[ebp], ecx
$LN5@GUI__CalcT:
; Line 67
	mov	eax, DWORD PTR _pTextRectOut$[ebp]
	mov	cx, WORD PTR _xPos$8345[ebp]
	mov	WORD PTR [eax], cx
; Line 68
	mov	eax, DWORD PTR _pTextRectOut$[ebp]
	mov	cx, WORD PTR _yPos$8346[ebp]
	mov	WORD PTR [eax+2], cx
; Line 69
	mov	eax, DWORD PTR _TextWidth$8347[ebp]
	mov	ecx, DWORD PTR _xPos$8345[ebp]
	lea	edx, DWORD PTR [ecx+eax-1]
	mov	eax, DWORD PTR _pTextRectOut$[ebp]
	mov	WORD PTR [eax+4], dx
; Line 70
	mov	eax, DWORD PTR _TextHeight$8348[ebp]
	mov	ecx, DWORD PTR _yPos$8346[ebp]
	lea	edx, DWORD PTR [ecx+eax-1]
	mov	eax, DWORD PTR _pTextRectOut$[ebp]
	mov	WORD PTR [eax+6], dx
; Line 71
	jmp	SHORT $LN13@GUI__CalcT
$LN12@GUI__CalcT:
; Line 72
	mov	eax, DWORD PTR _pTextRectIn$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR [eax+4]
	mov	eax, DWORD PTR _pTextRectOut$[ebp]
	mov	DWORD PTR [eax], ecx
	mov	DWORD PTR [eax+4], edx
$LN13@GUI__CalcT:
; Line 74
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 244				; 000000f4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUI__CalcTextRect ENDP
_TEXT	ENDS
END