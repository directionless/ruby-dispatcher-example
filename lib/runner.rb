class Runner

  def initialize(dispatcher, name)
    @dispatcher = dispatcher
    @name = name
  end

  def go
    while job = @dispatcher.next_job do
      sleep 0.5
      job_data = [@name, " ", job].to_s
      @dispatcher.record_data(job_data)
    end
  end

end
