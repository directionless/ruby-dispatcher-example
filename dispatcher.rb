#!/usr/bin/env ruby

require  'lib/dispatcher.rb'
require  'lib/runner.rb'

dispatcher = Dispatcher.new

threads = []
1.upto(3) do |num|
  threads << Thread.new { Runner.new(dispatcher,num).go }
end

threads.each {|t| t.join }
