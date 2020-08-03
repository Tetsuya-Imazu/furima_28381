class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :items
         has_many :item_purchases

  with_options presence: true do
  validates :nickname, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "全角で入力してください" }
  validates :password, format: { with: /\A[a-zA-Z0-9]+\z/ , message: "半角英数字で入力してください" }
  validates :confirmation_password, format: { with: /\A[a-zA-Z0-9]+\z/ , message: "半角英数字で入力してください" }
  validates :family_name, format: { /\A[ぁ-んァ-ン一-龥]/ , message: "全角で入力してください" }
  validates :first_name, format: { /\A[ぁ-んァ-ン一-龥]/ , message: "全角で入力してください" }
  validates :family_name_kana, format: { /\A[ァ-ヶー－]+\z/ , message: "全角カタカナで入力してください" }
  validates :first_name_kana, format: { /\A[ァ-ヶー－]+\z/ , message: "全角カタカナで入力してください" }
  validates :birth_day
  end
end
