class Inquiry < ApplicationRecord
	 has_many :replies
	 belongs_to :end_user
	 validates :inquirer_name, :mail, :inquiry_content, presence: true
end
