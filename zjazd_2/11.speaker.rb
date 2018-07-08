class Speaker
  def play(track_name)
    puts "Playing: #{track_name}"
  end
end

class BluetoothSpeaker < Speaker
  def play(track_name)
    puts "Streaming..."
    super
  end
end

BluetoothSpeaker.new.play('Cake By The Ocean')
