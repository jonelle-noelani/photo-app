class Tag < ApplicationRecord
    has_many :picture_tags
    has_many :pictures, through: :picture_tags

    # has_many :owned_pictures, through: :picture_tags
    # has_many :owners, through: :owned_pictures
    
    def self.most_popular
        # sorted_tags = Tag.all.map do |tag|
        #     tag.pictures.length
        # top_3 = sorted_tags.slice(0, 3)
        sorted_tags = Tag.all.sort_by { |tag| tag.pictures.length}.reverse
        puts "Top 3 Tags: #{sorted_tags[0].name}, #{sorted_tags[1].name}, #{sorted_tags[2].name}"
        # puts sorted_tags
        # returns sorted array; only need top 3; maybe put limit on array
    end

    def self.trending
        # return 10 from last 10 pictures with most comments; iterate
        sorted_pics = Picture.last(10).sort_by { |pic| pic.comments.length}.reverse
        puts "Top Trending Tag: #{sorted_pics[0].tags.sample.name}"
    end

end
