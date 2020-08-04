class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :items
         has_many :item_purchases

  with_options presence: true do
    NICKNAME_REGEX = /\A[ぁ-んァ-ン一-龥]/
    PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
    CONFIRMATION_PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
    FAMILY_NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/
    FIRST_NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/
    FAMILY_NAME_KANA_REGEX = /\A[ァ-ヶー－]+\z/
    FIRST_NAME_KANA_REGEX = /\A[ァ-ヶー－]+\z/
    validates :birth_day
  end
end
