class MakeReportJob < ActiveJob::Base
  queue_as :emails

  def perform(*args)
    File.open("mason.txt", 'w') do |f|
      f << "This class is awesome.  They picked #{args[0].name}."
      f << "They love baked goods."
      f << "They made this stupid unicorn thing."
    end
  end
end
