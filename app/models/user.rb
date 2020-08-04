class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :items
         has_many :item_purchases


         NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/
         PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
         NAME_KANA_REGEX = /\A[ァ-ヶー－]+\z/
        #  CONFIRMATION_PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
        #  FAMILY_NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/
        #  FIRST_NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/
        #  FAMILY_NAME_KANA_REGEX = /\A[ァ-ヶー－]+\z/
        #  FIRST_NAME_KANA_REGEX = /\A[ァ-ヶー－]+\z/

  with_options presence: true do
    validates :nickname, format: { with: NAME_REGEX, message: "全角で入力してください" }
    validates :password, format: { with: PASSWORD_REGEX , message: "半角英数字で入力してください" }
    validates :confirmation_password, format: { with: PASSWORD_REGEX , message: "半角英数字で入力してください" }
    validates :family_name, format: { with: NAME_REGEX , message: "全角で入力してください" }
    validates :first_name, format: { with: NAME_REGEX , message: "全角で入力してください" }
    validates :family_name_kana, format: { with: NAME_KANA_REGEX , message: "全角カタカナで入力してください" }
    validates :first_name_kana, format: { with: NAME_KANA_REGEX , message: "全角カタカナで入力してください" }
    validates :birth_day
  end
end
