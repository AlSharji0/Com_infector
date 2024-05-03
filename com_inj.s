.model small
.stack 100h

.data
    message db "Hello, World!", 0Dh, 0Ah, '$'  ; '$' is the string terminator for DOS interrupts

.code
main:
    mov ax, @data        ; Load data segment
    mov ds, ax           ; Set data segment
    
    lea dx, message      ; Load address of message into dx
    mov ah, 09h          ; Function to print string
    int 21h              ; Call DOS interrupt to print the message
    
    mov ah, 4Ch          ; Function to exit the program
    int 21h              ; Call DOS interrupt to exit
    
end main