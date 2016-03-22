class ReportController < ApplicationController
  def search
  end

  def thank_you
    @branch = Branch.find(params[:branch][:id])
    MakeReportJob.perform_later(@branch)
  end
end
