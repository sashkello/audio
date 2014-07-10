; adding parameters (amplitude and frequency)
<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
sr = 44100
0dbfs = 1

instr 1
;        amp  freq  table
ax oscil p4,   p5,  1
out ax
endin
 
</CsInstruments>

<CsScore>

; Ftable
;  load time  table size   GEN  params
f1 0          1024         10   1
 
; Note statement
; instr  start  duration
i 1      0      1        0.5  440
i 1      1      1        0.6  220
i 1      2      1        0.01  880
i 1      3      1        0.5  330

</CsScore>

</CsoundSynthesizer>
