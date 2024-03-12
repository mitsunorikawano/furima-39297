class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :email, presence: true
  validates :email, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "は有効な形式で入力してください" }
  validates :password, presence: true, format: { with: /\A(?=.*?[a-zA-Z])(?=.*?\d)[a-zA-Z\d]+\z/, message: "は半角英数字混合で入力してください" }
  validates :password, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password, confirmation: true

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :name, presence: true, format: { with: /\A[\p{Han}\p{Hiragana}\p{Katakana}]+\z/, message: "は全角文字で入力してください" }
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :last_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: "は全角カタカナで入力してください" }
  validates :first_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: "は全角カタカナで入力してください" }
  validates :birth_date, presence: true
end
