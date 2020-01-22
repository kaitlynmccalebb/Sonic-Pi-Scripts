# Welcome to Sonic Pi v3.1
use_bpm 91
live_loop :bass do
  use_synth :fm
  4.times do
    play chord(:E, :minor)
    sleep 0.25
  end
  sample"C:/Users/kaitlyn_mccalebb/Downloads/dontcare_sample.wav"
  sleep 8
  play chord(:B, :minor)
  sleep 1
  play chord(:E, :minor)
  sleep 1
  play chord(:B, :minor)
  sleep 1
  play chord(:A, "7")
  sleep 1
  play chord(:B, :minor)
  sleep 0.25
  play chord(:A, :minor)
  sleep 0.5
  play chord(:E, :minor)
  sleep 0.5
  play chord(:B, :minor7)
  sleep 0.5
  play chord(:A, :minor)
  sleep 0.5
  play chord(:E, :minor)
  sleep 0.5
  play chord(:C, "7")
  sleep 0.5
  play chord(:B, "7")
  sleep 0.5
  play chord(:A, :minor)
  sleep 0.5
  play chord(:E, :minor)
  sleep 0.5
  play chord(:B, :minor)
  sleep 0.5
  play chord(:A, :minor)
  sleep 0.5
  play chord(:E, :minor)
  sleep 0.5
  play chord(:B, :minor)
  sleep 0.5
  play chord(:A, :minor)
  sleep 0.5
  play chord(:E, :minor)
  sleep 0.5
  play chord(:B, :minor)
  sleep 0.5
  play chord(:A, :minor)
  sleep 0.5
  play chord(:E, :minor)
  sleep 0.5
  play chord(:B, :minor)
  sleep 0.5
  play chord(:A, :minor)
  sleep 0.5
  play chord(:E, :minor)
  sleep 0.5
  play chord(:B, :minor)
  sleep 0.5
  play chord(:A, :minor)
  sleep 0.5
  play chord(:G, "7")
  sleep 0.5
  play chord(:Gs, :major7)
end