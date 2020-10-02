class User < ApplicationRecord
    has_many :owned_pictures, class_name: "Picture", foreign_key: "owner_id"
	has_many :comments
	has_many :pictures, through: :comments

	has_secure_password

	# has_many :picture_tags, through: :owned_pictures
	# has_many :tags, through: :picture_tags
	# accepts_nested_attributes_for :tags

	validates :email, uniqueness: true
	# validates_with EmailValidator
	# validates :email, 
	# format: { with: /(.+)@(.+)/, message: "Email Invalid"},
	# 	uniqueness: { case_sensitive: false },
	# 	length: { minimum: 4, maximum: 254 }
	
	validates :username, uniqueness: true
	
	validates :email, :username, :password, presence: true

	def received_comments
		self.owned_pictures.map do |picture| 
			# if picture.comments.any? 
				picture.comments
			# else
			# 	puts ["You don't have any received comments yet"]
			# end
		end
	end

end
