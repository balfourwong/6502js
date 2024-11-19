
;
;  draw image
;

start:
  lda #<logo
  sta $0
  lda #>logo
  sta $1

  lda #$00
  sta $2
  lda #$02
  sta $3

  ldx #$0
l:
  lda ($0,x)
  sta ($2,x)

  inc $00
  lda $00
  cmp #$00
  bne notReset1
  inc $01
notReset1:

  inc $02
  lda $02 
  cmp #$00
  bne notReset2
  lda $03
  cmp #$05
  beq done
  inc $03
notReset2:

  jmp l
done:
  rts

logo:
  dcb 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
 dcb 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
 dcb 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
 dcb 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
 dcb 6,6,6,6,6,6,6,6,1,6,6,6,6,6,6,6
 dcb 6,6,6,6,6,1,1,1,1,1,1,6,6,6,6,6
 dcb 6,6,6,6,1,1,1,1,1,1,1,6,6,6,6,6
 dcb 6,6,6,6,1,1,1,1,1,1,6,6,6,6,6,6
 dcb 6,6,6,6,1,1,1,1,1,1,1,6,6,6,6,6
 dcb 6,6,6,6,1,1,1,1,1,1,1,6,6,6,6,6
 dcb 6,6,6,6,6,1,1,1,1,1,1,6,6,6,6,6
 dcb 6,6,6,6,6,6,1,1,1,1,6,6,6,6,6,6
 dcb 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
 dcb 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
 dcb 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
 dcb 6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6
