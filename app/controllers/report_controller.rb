require 'csv'
class ReportController < ApplicationController
  def search
  end

  def thank_you
    @branch = Branch.find(params[:branch][:id])
    MakeReportJob.set(wait: 15.seconds).perform_later(@branch.id)
  end

  def write_email

  end

  def send_email
    ReportMailer.invite_friend(params[:address]).deliver_later(wait_until: Time.now.end_of_day)
  end
end
