# Welcome to Sonic Pi v3.1
use_synth :piano
use_bpm 95

oldschool ="C:/Users/kaitlyn_mccalebb/Downloads/laurynhill.wav"
first ="C:/Users/kaitlyn_mccalebb/Downloads/start.wav"
more ="C:/Users/kaitlyn_mccalebb/Downloads/acapella.wav"
a ="C:/Users/kaitlyn_mccalebb/Downloads/thewayitis.wav"
c ="C:/Users/kaitlyn_mccalebb/Downloads/neverbethesame.wav"
smooth ="C:/Users/kaitlyn_mccalebb/Downloads/smooth.wav"
b ="C:/Users/kaitlyn_mccalebb/Downloads/pacadlib.wav"
d ="C:/Users/kaitlyn_mccalebb/Downloads/pacadlib2.wav"
outro ="C:/Users/kaitlyn_mccalebb/Downloads/outro.wav"
outro2 ="C:/Users/kaitlyn_mccalebb/Downloads/outro2.wav"
brownstone ="C:/Users/kaitlyn_mccalebb/Downloads/brownstone.wav"
lh="C:/Users/kaitlyn_mccalebb/Downloads/ifiruledtheworld.wav"


x = 1
z = 2
amp =[1, 2, 3, 4, 5]

define:pm do |note1,note2,note3,note4|
  play note1
  sleep 1
  play note2
  sleep 1
  play note3
  sleep 1
  play note4
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
end
define:go do |n1,n2,n3|
  play n1
  sleep 2
  play n2
  sleep 1
  play n3
  sleep 1
end
4.times do
  sample lh, amp: 0.5, rate:x
  sleep 0.5
  x=x+0.5
end
sleep 4
live_loop :melody do
  1.times do
    yes :A, :Fs4, :D, :A, :Cs
    play :a
    sleep 1
    play :F4
    play :d
    sleep 1
    play :Cs
    sleep 1
    pm :A,:Cs,:Cs,:D
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
    play :cs
    sleep 1
    play :cs
    sleep 1
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
sleep 3.5
sample brownstone, amp: amp[2]
sleep 26
sample first, amp: amp[4]
sleep 8
sample more, amp: amp[4]
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
    sample more, amp: amp[0]
    sleep 15
  end
  stop
end
6.times do
  sample choose([a, b, c, d])
  sleep 8
end

sleep 2
live_loop :outro do
  4.times do
    sample outro, amp:x
    sleep 4.078684807256236
    x=x-0.2
  end
end
sleep 16
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
