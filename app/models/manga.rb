class Manga < ApplicationRecord
    belongs_to :author
    has_many :reviews
	has_many :favourites
    belongs_to :category
    # has_and_belongs_to_many :users, join_table: 'favourites'
    
    has_one_attached :image

    def get_author
		if self.author
			self.author.name
		else
			"Deleted"
		end
    end
    
    def get_category
		if self.category
			self.category.category
		else
			"Deleted"
		end
    end

end
