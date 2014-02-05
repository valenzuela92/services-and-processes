#!/usr/bin/env ruby
#


require 'thread'

class CounterThread < Thread
  def initialize
     @count =0
     @continue= true

     super do
        @count += 1 while @continue
        puts "I counted up to #{@count} before I was cruelly stopped."
      end
  end

def stop
  @continue = false
   end
end

counter = CounterThread.new
sleep 2
counter.stop
