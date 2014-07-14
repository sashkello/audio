; Reading sound file
<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
 
sr     =  44100
0dbfs  =  1

instr 1
    ;      sourse   filename        start
    a1     soundin  "flute.aiff",   p5
    out    a1
endin
 
</CsInstruments>

<CsScore>

;   start  dur  amp  skip 
i1  0      2    1    0     
i1  4      2    1    1     

</CsScore>

</CsoundSynthesizer>
