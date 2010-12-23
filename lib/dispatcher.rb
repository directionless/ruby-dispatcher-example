require 'thread'

class Dispatcher

  def initialize
    @mutex = Mutex.new
  end

  def next_job
    @mutex.synchronize do
      return rand(100)
    end
  end

  def record_data(data)
    @mutex.synchronize do
      puts data
    end
  end

end
