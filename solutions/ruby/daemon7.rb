#!/usr/bin/env ruby
#

class LoopingThread < Thread
  def initialize
    @stopped = false
    @paused = false
    super do
      before_loop
      until @stopped
        yield
        Thread.stop if @paused
      end
      after_loop
    end
  end
  def before_loop; end
  def after_loop; end
  def stop
    @stopped = true
  end
  def paused=(paused)
    @paused = paused
    run if !paused
  end
end

 
