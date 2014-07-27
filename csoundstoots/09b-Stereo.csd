; From left to right
<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
 
sr     =  44100
0dbfs  =  1
nchnls =  2

instr 1
    inote = cpspch(p5)
    a1     oscil p4 , inote, 1 
    kcross linseg  1, p3, 0
    outs   a1*kcross, a1*(1 - kcross)
endin
 
</CsInstruments>

<CsScore>
f1 0 2048 10 1

;   start  dur  amp  note
i1  0      2    1    8

</CsScore>

</CsoundSynthesizer>
