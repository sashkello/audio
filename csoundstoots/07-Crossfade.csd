; Crossfade from one table to another 
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
    a2  oscil  p4,  inote,  p7
     
    ; crossfade by linear segments
    ;   linear  start  dur  end  dur  end  dur        end
    kf  linseg  1,     p9,  1,   p8,  0,   p3-p9-p8,  0

    out kf*a1+(1-kf)*a2
endin
 
</CsInstruments>

<CsScore>

;   load_time  t_size  GEN  params
f1  0          4096    10   1                                        ;sine
f2  0          4096    10   1       0.5  0.3  0.25  0.2  0.167  0.14 ;saw
f3  0          4096    10   1       0    0.3  0     0.2  0      0.14 ;square
 
;   start  dur  amp  note  table1  table2  crosstime startcross
i1  0      3    1    8     1       2       0.5       1.0
i1  5      5    1    8     3       1       2.0       2.5

</CsScore>

</CsoundSynthesizer>
