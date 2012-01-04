#!/usr/bin/env ruby
require 'pp'
require 'fileutils'

root = ENV["ENV_ROOT"]

#find the php directory we care about
entries = Dir.entries("#{root}/usr/lib/php5")
entries.delete(".")
entries.delete("..")

entries.delete("libexec")

directories = []
entries.each do |ent|
  abs = "#{root}/usr/lib/php5/#{ent}"
  if File.directory?(abs)
    directories.push(abs)
  end
end

if directories.length == 1
  File.symlink(directories[0], "#{root}/usr/lib/php5/extension")
else
  puts "WARNING: Could not find php extension directory"
end
