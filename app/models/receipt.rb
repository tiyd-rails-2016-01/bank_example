class Receipt < ActiveRecord::Base
  belongs_to :expense
  has_attached_file :uploaded_file
  validates_attachment_content_type :uploaded_file, content_type: /\Aimage\//
end
