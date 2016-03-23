require 'csv'

class MakeReportJob < ActiveJob::Base
  queue_as :emails

  def perform(*args)
    branch = Branch.find(args[0])
    file_path = Rails.root.join("tmp", "report#{rand(10000)}.csv")
    CSV.open(file_path, "w") do |csv|
      csv << ["Branch Name", "Account Owner", "Payee", "Amount", "When"]
      branch.accounts.each do |a|
        a.expenses.each do |e|
          csv << [branch.name, a.owner, e.payee, e.amount, e.paid_at]
        end
      end
    end
    ReportMailer.send_report(file_path).deliver_now
  end
end
