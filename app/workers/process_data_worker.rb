class ProcessDataWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
    puts "Starting ProcessDataWorker"
    sleep(5)
    puts "Executed ProcessDataWorker"
  end
end
