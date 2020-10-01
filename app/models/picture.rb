class Picture < ApplicationRecord
  has_many :picture_tags
	has_many :tags, through: :picture_tags
  belongs_to :owner, class_name: "User"
  has_many :comments
  has_many :users, through: :comments
  
  accepts_nested_attributes_for :tags

  def tags_attributes=(tag_attributes)
		tag_attributes.values.each do |tag_attribute|
			if tag_attribute["name"].present?
				tag = Tag.find_or_create_by(tag_attribute)
				self.tags << tag
			end
		end
  end
  
end
