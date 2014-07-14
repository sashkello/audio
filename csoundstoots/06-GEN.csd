; Generating various shapes using GEN10.
<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
 
sr     =  44100
0dbfs  =  1

instr 1
    inote = cpspch(p5)

    ;   osc    vol  freq    table
    a1  oscil  p4,  inote,  p6

    out a1
endin
 
</CsInstruments>

<CsScore>

;   load_time  t_size  GEN  params
f1  0          4096    10   1                                        ;sine
f2  0          4096    10   1       0.5  0.3  0.25  0.2  0.167  0.14 ;saw
f3  0          4096    10   1       0    0.3  0     0.2  0      0.14 ;square
 
;   start  dur  amp  note  table
i1  0      2    1    8     1
i1  2      2    1    8     2
i1  4      2    1    8     3

</CsScore>

</CsoundSynthesizer>
