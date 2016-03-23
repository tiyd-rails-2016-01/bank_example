class ReportMailer < ApplicationMailer

  def invite_friend(address)
    @greeting = "Hi"

    mail to: address, subject: "Please sign up for our app!"
  end


  def send_report(path)
    @greeting = "Hi"
    @path = path

    attachments['report.csv'] = File.read(path)
    mail to: "mason.matthews@theironyard.com", subject: "The report you requested."
  end
end
