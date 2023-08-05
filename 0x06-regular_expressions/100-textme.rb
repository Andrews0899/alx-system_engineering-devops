#!/usr/bin/env ruby

# Check if the input CSV file is provided as an argument
unless ARGV.length == 1
  puts "Usage: #{$PROGRAM_NAME} <input_csv_file>"
  exit 1
end

# Input CSV file
input_file = ARGV[0]

# Check if the input file exists
unless File.exist?(input_file)
  puts "Error: Input file '#{input_file}' not found."
  exit 1
end

# Output header
puts "Sender,Receiver,Flags"

# Process the CSV file and extract relevant information
File.foreach(input_file) do |line|
  sender, receiver, flags = line.chomp.split(',')
  puts "#{sender},#{receiver},#{flags}"
end

