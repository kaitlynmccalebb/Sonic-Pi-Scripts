# Welcome to Sonic Pi
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


x= 1
sample intro
sleep 3
4.times do
  play :G, amp: 0.5
  sample :bd_boom
  sleep 1
  play :G, amp: 0.5
  sample :bd_boom
end
3.times do
  play :G, amp: 0.5
  sample :bd_boom
  sleep 0.5
end
6.times do
  play :G, amp: 0.25
  sample :bd_boom, amp:x
  sleep 0.25
  x=x-0.15
end
x=1
bridge =[beat, glitch, pause, nas]
sample bridge[0], amp: 2
sleep 30.772
sample bridge[2]
sleep 0.2
sample bridge[1]
sleep 0.2
sample bridge[3]
sleep 7.930634920634921
live_loop :change do
  sample chill, amp: 2
  sleep 53.843650793650795
end
sleep 3
sample cyanide, amp: 3
sleep 11.490566893424036
sample daniel, amp: 3
sleep 11.624195011337868
sample sweet, amp: 3
live_loop :backvocals do
  8.times do
    sleep 8
    sample lh, amp: 0.75
  end
  stop
end
sleep 60
2.times do
  sample lh
  sleep 0.1
end
sleep 3
live_loop :her do
  4.times do
    sample lh, amp: 0.5, rate:x
    x=x+0.5
  end
  stop
end