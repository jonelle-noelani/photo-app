class User < ApplicationRecord
    has_many :owned_pictures, class_name: "Picture", foreign_key: "owner_id"
	has_many :comments
	has_many :pictures, through: :comments

	validates :email, uniqueness: true
	# validates_with EmailValidator
	# validates :email, 
	# format: { with: /(.+)@(.+)/, message: "Email Invalid"},
	# 	uniqueness: { case_sensitive: false },
	# 	length: { minimum: 4, maximum: 254 }
	
	validates :username, uniqueness: true
	
	validates :password, presence: true

	def received_comments
		self.owned_pictures.map {|picture| picture.comments}
	end
end
