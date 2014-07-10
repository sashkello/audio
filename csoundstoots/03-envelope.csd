; envelope. Fade-in and fade-out; then increase in freq and back
<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
sr = 44100
0dbfs = 1

instr 1
kx linen 0.5,  0.1, p3, 1 ; 0.1 sec to amplitude of 0.5, duration p3, fade out 1
ax oscil kx,   440, 1     ; here amplitude is taken from kx
out ax
endin

instr 2
kx linen 440,  0.1, p3, 1 ; 0.1 sec to amplitude of 0.5, duration p3, fade out 1
ax oscil 1,    kx, 1     ; here amplitude is taken from kx
out ax
endin
 
</CsInstruments>

<CsScore>

; Ftable
;  load time  table size   GEN  params
f1 0          4096         10   1
 
; Note statement
; instr  start  duration
i 1      0      2.0 
i 2      2      2.0 

</CsScore>

</CsoundSynthesizer>
