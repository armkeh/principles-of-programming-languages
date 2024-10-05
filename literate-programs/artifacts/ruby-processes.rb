10.times do |i|
  fork do
    sleep 3
    puts "I am process #{i}"
  end
end

puts "All started."
Process.waitall
puts "All done."
