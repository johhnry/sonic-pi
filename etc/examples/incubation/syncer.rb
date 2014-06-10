use_synth "mod_saw"

in_thread do
  loop do
    sync :tick
    sleep 1
  end
end

in_thread do
  loop do
    wait :tick
    sample :drum_heavy_kick
  end
end

in_thread do
  loop do
    wait :tick
    play chord(:e1, :minor).choose, mod_rate: [1, 2, 4, 8].choose, cutoff: rrand(80, 110)
  end
end
