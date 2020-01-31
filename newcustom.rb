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
sample beat, amp: 2
sleep 29.772
sample glitch
sleep 0.2
sample pause
sleep 0.2
sample nas
sleep 7.930634920634921
live_loop :change do
  sample chill, amp: 2
  sleep 53.843650793650795
end
sleep 3
sample soft, amp: 5
sleep 9.25045351473923
sample slide
live_loop :backvocals do
  sleep 6
  sample lh, amp: 0.75
end
sleep 60
2.times do
  sample lh
end
live_loop :her do
  4.times do
    sample lh, rate:x
    x=x+0.5
  end
end


print sample_duration jazz



=begin
live_loop :tempo do
  sample "C:/Users/kaitlyn_mccalebb/Downloads/ashamed2.wav", amp: 0.3
  sleep 5.3
end
sleep 6
live_loop :bass do
  use_synth :fm
end
play :C
  play :Ds
=end
