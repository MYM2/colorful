class Delivery < ApplicationRecord
	belongs_to :end_user
	validates :lastname_kanji, :firstname_kanji, :lastname_kana,
			  :firstname_kana, :phone_number, :zipcode, :address,
			   presence: true
end
