<Cabbage>
form caption("Deep End") size(530, 480), colour("black"), pluginID("Deep")
image , , file("background2.png"), bounds(0, 0, 530, 480) 
image , , file("deep logo.png"), bounds(0, 0, 530, 220) 
image , , file("mylogogrey.png"), bounds(-40, 390, 248, 147) 
image , , file("psalogogrey.png"), bounds(372, 342, 248, 263)

groupbox bounds(168, 272, 203, 208) text("Deepness")
groupbox bounds(176, 176, 180, 87) text("Volume")
rslider bounds(152, 264, 239, 211), channel("deep"), range(0, 1, 0, 1, 0.01), , trackercolour(255, 255, 255, 0), outlinecolour(43, 41, 41, 0), textcolour(0, 0, 0, 255) colour(63, 60, 60, 255), imgfile("Slider", "knob2.svg") 

hslider bounds(192, 200, 150, 50) range(0, 1, 0, 1, 0.001)
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 64
nchnls = 2
0dbfs=1

instr 1
kMain chnget “deep”

kFdBack = kMain
kFco = kMain * 10000
kGain = kMain

aInL inch 1
aInR inch 2
aOutL, aOutR reverbsc aInL, aInR, kFdBack, kFco
outs aOutL*kGain, aOutR*kGain
endin
</CsInstruments>  
<CsScore>
f1 0 1024 10 1
i1 0 z
</CsScore>
</CsoundSynthesizer>