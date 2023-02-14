class Author < ApplicationRecord
    has_many :mangas
    
    has_one_attached :author_image
end
