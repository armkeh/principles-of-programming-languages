10.times do |i|
  fork do
    sleep 3
    puts "I'm zombie number #{i}!"
  end
end
abort "The main process has aborted, but the children might still act."
