require 'sidekiq'


class MyWorker
  include Sidekiq::Worker

  def perform()
    sec = rand(10)
    sleep sec
    puts "work hard #{sec}sec"
  end
end
