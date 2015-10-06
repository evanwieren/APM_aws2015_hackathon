#!/usr/bin/env ruby

require 'json'


raw_data = File.read(ARGV[0])

data_hash = JSON.parse(raw_data)

transcript = ""
data_hash['results'].each do |line|
  transcript = transcript +  line['alternatives'].last['transcript']
end

puts transcript
