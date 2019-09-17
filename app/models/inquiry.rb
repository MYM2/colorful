class Inquiry < ApplicationRecord
	 has_many :replies
	 validates :inquirer_name, :mail, :inquiry_content, presence: true
end
