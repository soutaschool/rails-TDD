class Chef < ApplicationRecord
	before_save { self.email = email.downcase }
	validates :chefname ,presence: true , length: { maximum: 30}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# エラーメッセージの重複を防ぐ方法
	validates :email, presence: true, length: { maximum: 255 }, format: {with: VALID_EMAIL_REGEX}, uniqueness: { case_sensitive: false }
	 #属性の値が一意（unique）であり重複していないことを検証
end
