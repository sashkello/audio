; one second of 440 Hz sine
<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
sr = 44100
0dbfs = 1

instr 1
;        amp  freq  table
ax oscil 1,   140,  1
out ax
endin
 
</CsInstruments>

<CsScore>

; Ftable
;  load time  table size   GEN  params
f1 0          1024         10   1
 
; Note statement
; instr  start  duration
i 1      0      1

</CsScore>

</CsoundSynthesizer>
