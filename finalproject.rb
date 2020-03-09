# Welcome to Sonic Pi v3.1
jazz = "C:/Users/kaitlyn_mccalebb/Downloads/jazzhiphop.wav"
beat ="C:/Users/kaitlyn_mccalebb/Downloads/gunnabeat.wav"
trap ="C:/Users/kaitlyn_mccalebb/Downloads/gangtrapbeat.wav"
intro="C:/Users/kaitlyn_mccalebb/Downloads/beginningsample1.wav"
glitch= "C:/Users/kaitlyn_mccalebb/Downloads/newglitch.wav"
kanye= "C:/Users/kaitlyn_mccalebb/Downloads/kanye.wav"
woah= "C:/Users/kaitlyn_mccalebb/Downloads/woah.wav"
pause= "C:/Users/kaitlyn_mccalebb/Downloads/pause2.wav"
rap="C:/Users/kaitlyn_mccalebb/Downloads/rap.wav"
rap2= "C:/Users/kaitlyn_mccalebb/Downloads/rap2.wav"
chill= "C:/Users/kaitlyn_mccalebb/Downloads/chill.wav"
soft="C:/Users/kaitlyn_mccalebb/Downloads/softvocal.wav"
nas="C:/Users/kaitlyn_mccalebb/Downloads/ruledtheworld.wav"
lh="C:/Users/kaitlyn_mccalebb/Downloads/ifiruledtheworld.wav"
slide="C:/Users/kaitlyn_mccalebb/Downloads/slide.wav"
cyanide="C:/Users/kaitlyn_mccalebb/Downloads/CYANIDE.wav"
sweet="C:/Users/kaitlyn_mccalebb/Downloads/sweetmelody.wav"
daniel="C:/Users/kaitlyn_mccalebb/Downloads/danielceaser.wav"
bop="C:/Users/kaitlyn_mccalebb/Downloads/newbop.wav"
brockhampton="C:/Users/kaitlyn_mccalebb/Downloads/ugh2.wav"
tierra="C:/Users/kaitlyn_mccalebb/Downloads/tierra.wav"
oldschool ="C:/Users/kaitlyn_mccalebb/Downloads/laurynhill.wav"
first ="C:/Users/kaitlyn_mccalebb/Downloads/start.wav"
more ="C:/Users/kaitlyn_mccalebb/Downloads/acapella.wav"
a ="C:/Users/kaitlyn_mccalebb/Downloads/theway.wav"
c ="C:/Users/kaitlyn_mccalebb/Downloads/changes.wav"
e ="C:/Users/kaitlyn_mccalebb/Downloads/vocal.wav"
b ="C:/Users/kaitlyn_mccalebb/Downloads/beingreal.wav"
d ="C:/Users/kaitlyn_mccalebb/Downloads/pacadlib2.wav"
outro ="C:/Users/kaitlyn_mccalebb/Downloads/outro.wav"
outro2 ="C:/Users/kaitlyn_mccalebb/Downloads/outro2.wav"
brownstone ="C:/Users/kaitlyn_mccalebb/Downloads/brownstone.wav"
lh="C:/Users/kaitlyn_mccalebb/Downloads/ifiruledtheworld.wav"
guitar="C:/Users/kaitlyn_mccalebb/Downloads/guitar.wav"
brock="C:/Users/kaitlyn_mccalebb/Downloads/brockbackground.wav"
z = 2
amp =[0.8, 0.6, 0.4, 0.2, 0]
k = 0


define:melody do
  play:Bb7
  sleep 1
  play:E7
  sleep 1
end
x= 1
#intro
sample intro
sleep 3
4.times do
  play :G, amp: 0.5
  sample :bd_boom
  sleep 1
  play :G, amp: 0.5
  sample :bd_808
end
3.times do
  play :G, amp: 0.5
  sample :bd_808
  sleep 0.5
end
6.times do
  play :G, amp: 0.25
  sample :bd_808, amp:x
  sleep 0.25
  x=x-0.15
end
sleep 0.1
#hiphop
sample bop
bridge =[beat, glitch, nas]
sleep 0.2
live_loop :dababy do
  1.times do
    sample bridge[0], amp: 0.8
    print "beat"
    sleep 30.886009070294783
  end
  stop
end
sleep 28.842176870748316
sample bridge[1]
sleep 0.2
sample bridge[2]
sleep 7.930634920634921
live_loop :change do
  1.times do
    sample chill
    sleep 53.843650793650795
  end
  stop
end
sleep 1
#Rnb
sample cyanide, amp: 3
sleep 16.490566893424036
sample daniel, amp: 2
sleep 6.624195011337868
sample soft, amp: 4
sleep 4.25045351473923
sample sweet, amp: 6
sleep 6
live_loop :backvocals do
  4.times do
    sleep 4
    sample lh, amp: 0.75
    print "lh"
  end
  stop
end
sleep 15
2.times do
  sample lh
  sleep 0.1
  print "lh"
end
sleep 3
#transition
live_loop :her do
  4.times do
    sample lh, amp: 0.5, rate:x
    x=x+0.5
    print "transition"
  end
  stop
end
# Welcome to Sonic Pi v3.1
use_synth :piano
use_bpm 95



z = 2
amp =[0.8, 0.6, 0.4, 0.2, 0]
k = 0
#functions
define:pm do |note1,note2,note3|
  play note1
  sleep 1
  play note2
  sleep 1
  play note3
  sleep 1
end
define:yes do |note5,note6,note7,note8,note9|
  play note5
  sleep 1
  play note6
  play note7
  sleep 1
  play note8
  sleep 1
  play note9
  sleep 1
  print "yes"
end
define:cs do
  play :cs
  sleep 1
  print "cs"
end

#beginning melody
sleep 4
live_loop :melody do
  1.times do
    yes :A, :Fs4, :D, :A, :Cs
    yes :A, :F4, :D, :Cs, :A
    play :a
    sleep 1
    play :F4
    play :d
    sleep 1
    play :Cs
    sleep 1
    pm :Cs,:Cs,:D
    play :cs
    sleep 1
    play :d
    sleep 2
    play :d
    sleep 1
    play :gs
    sleep 0.5
    play :gs
    sleep 0.5
    cs
    cs
    play :d
    sleep 1
    play :d, sustain:2
    sleep 1
    play :cs4
    play :d4
    sleep 1
  end
  stop
end
live_loop :addtomelody do
  1.times do
    sleep 3
    play :r
    sleep 0.5
    play :fs2, sustain:1
    sleep 0.5
    play :fs2
    sleep 3
    play :fs3
    sleep 1
    play :b2
    sleep 2
    play :a3
    sleep 1.5
    play :e2, sustain:1
    sleep 0.5
    play :e2
    sleep 3
  end
  stop
end
#90's Rnb
sleep 3.5
sample brownstone, amp: 3
sleep 25
sample first, amp: 5
sleep 7.5
sample more, amp: 5
sleep 9
live_loop :old do
  1.times do
    sample oldschool
    sleep 30.007732426303853
  end
  stop
end
sleep 11
live_loop :shaimore do
  6.times do
    sample more, amp: 0.6
    sleep 15
  end
  stop
end
sleep 2
live_loop :guitar do
  1.times do
    sample guitar, amp: 0.3
    print"guitar"
    sleep 32.02612244897959
  end
end
#Adlibs
4.times do
  sample choose([a, b, c, d, e])
  print "adlib"
  sleep 12
end
sleep 0.2
x = 0.8
#outro
live_loop :outro do
  4.times do
    sample outro, amp: amp[k]
    sleep 5.2
    k= k+1
    print "amp change"
  end
  if k == 4
  then
    stop
  end
end
sleep 17.5
sample outro2
















#sleep 4
#play :a3
#sleep 2
#play :a3, sutain:2
#sleep 2
#play :a3
#sleep 3
#play :fs3, sustain:1
#sleep 1
#play :fs3, sustain:3
#sleep 3
#play :fs3
#sleep 0.5
#play :e2, sustain:1
#sleep 0.5
#play :e2
#sleep 4


#play :a3, sustain:5
#sleep 4
#play :a3
#sleep 4
#play :b3
#sleep 0.25
#play :a3
#sleep 0.75
#play :d, sustain: 3
#sleep 2
#play :d
#sleep 0.5
#play :e2, sustain: 1
#sleep 0.5
#play :e2, sustain: 4
#sleep 3
#play :e2
#sleep 0.5
#play :gs2
#sleep 0.5
#sleep 2
#play :cs
#sleep 1
#yes :A, :Cs,:D, :Cs,:D
#play :cs
#sleep 0.5
#play :cs
#sleep 0.5
#play :d
#sleep 1
#play :a
#sleep 1
#play :d
#sleep 1
#pm :Gs, :Cs, :Cs, :D
#play :d, sustain:3
#sleep 3
#play :d
#sleep 0.5
#play :d, sustain:1
#sleep 0.5
#go :D, :Cs, :Cs
#go :Bm, :Cs, :D
#pm :Gs, :Cs, :Cs, :D

#sample bop, amp: 0.5
#sleep 29.08421768707483
