; Local note will cut reverb => need to add a global reverb. 
<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
 
sr     =  44100
0dbfs  =  1
gasig  =  0

instr 1
    ireverbgain = p6
    ;      sourse   filename        start
    a1     soundin  "flute.aiff",   p5
    out    a1*p4
    ; signal is added to reverb processing with amplitude ireverbgain
    gasig = gasig + a1*ireverbgain
endin
 
instr 2
    ireverbtime = p4
    asig  reverb  gasig, ireverbtime    
    out asig
    gasig = 0
endin
</CsInstruments>

<CsScore>
; this instrument applies to the whole output
;  start  dur  reverbtime
i2 0      10   4

;   start  dur  amp  skip  reverbgain
i1  0      2    0.5  0     0.2

</CsScore>

</CsoundSynthesizer>
