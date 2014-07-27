; Reading sound file; also reverb
<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
 
sr     =  44100
0dbfs  =  1

instr 1
    ireverbtime = p6
    ;      sourse   filename        start
    a1     soundin  "flute.aiff",   p5
    arev   reverb  a1,  ireverbtime
    out    a1 + arev
endin
 
</CsInstruments>

<CsScore>

;   start  dur  amp  skip  reverbtime
i1  0      2    0.5  0     2
;i1  4      2    1    1     1

</CsScore>

</CsoundSynthesizer>
