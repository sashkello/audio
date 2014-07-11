; Vibrato. Changing pitch using another oscillator.
<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
sr = 44100
0dbfs = 1

instr 1
inote = cpspch(p5) ; convert pitch to cycles per second (so that we can input notes instead of freqs)

; use our sine wave for modulation
;        depth freq 
k1 oscil p7,   p6,   1
 
;        vol     freq         table
a1 oscil 0.5,    inote + k1,       1

out a1
endin
 
</CsInstruments>

<CsScore>

; Ftable
;  load time  table size   GEN  params
f1 0          4096         10   1
 
; Note statement
i1 0 2 1 8 10 10 
i1 2 2 1 8 10 40 
i1 4 2 1 8 20 40 

</CsScore>

</CsoundSynthesizer>
