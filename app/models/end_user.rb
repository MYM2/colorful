class EndUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :deliveries, dependent: :destroy
         has_many :reviews, dependent: :destroy
         has_many :favorites, dependent: :destroy
         has_many :orders, dependent: :destroy
         has_many :carts, dependent: :destroy

         validates :email, :encrypted_password, :lastname_kanji, :firstname_kanji, :lastname_kana,
			  :firstname_kana, :phone_number,
			   presence: true
         acts_as_paranoid #論理削除用のgemである'paranoid'を使用するための記述

end
