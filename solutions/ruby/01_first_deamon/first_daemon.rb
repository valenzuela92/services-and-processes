#! /usr/bin/env
#
#first.daemon.rb

require 'tempfile'

puts 'About to deamonize'
Process.deamon
log=Tempfile.new('daemon.log')

loop do

log.put("I'm a deamon doing daemon things")
log.flush
sleep 5 
end 
