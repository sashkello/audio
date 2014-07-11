; Chorus. Adds two frequencies around the main one.
<CsoundSynthesizer>
<CsOptions>
</CsOptions>

<CsInstruments>
sr = 44100
0dbfs = 1

instr 1
iscale = p4*0.333 ; since we are mixing three signals, we need to reduce the volume
inote = cpspch(p5) ; convert pitch to cycles per second (so that we can input notes instead of freqs)
;        vol     freq         table
a1 oscil iscale, inote,       1
a2 oscil iscale, inote*0.99,  1
a3 oscil iscale, inote*1.01,  1

a1 = a1+a2+a3
out a1
endin
 
</CsInstruments>

<CsScore>

; Ftable
;  load time  table size   GEN  params
f1 0          4096         10   1
 
; Note statement
i1 0 2 1 8
i1 2 2 1 9
i1 4 2 1 7

</CsScore>

</CsoundSynthesizer>
