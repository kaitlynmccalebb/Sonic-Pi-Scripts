# Welcome to Sonic Pi
jazz = "C:/Users/kaitlyn_mccalebb/Downloads/jazzhiphop.wav"
beat ="C:/Users/kaitlyn_mccalebb/Downloads/gunnabeat.wav"
intro="C:/Users/kaitlyn_mccalebb/Downloads/beginningsample1.wav"
glitch= "C:/Users/kaitlyn_mccalebb/Downloads/glitchsoundeffect.wav"
kanye= "C:/Users/kaitlyn_mccalebb/Downloads/kanye.wav"


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
  play :G, amp: 0.5
  sample :bd_boom
  sleep 0.25
end
sleep 1
live_loop :beat do
  2.times do
    sample beat, amp: 2
    sleep 30
  end
  stop
end
sleep 10
sample kanye, rate: 1, amp: 0.5
sleep 51
sample glitch
live_loop :change do
  sample jazz
end





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
