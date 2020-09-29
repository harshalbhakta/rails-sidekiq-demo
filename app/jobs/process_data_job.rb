class ProcessDataJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "Starting ProcessDataJob"
    sleep(5)
    puts "Executed ProcessDataJob"
  end
end
