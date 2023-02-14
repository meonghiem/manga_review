class Review < ApplicationRecord
    belongs_to :manga
    belongs_to :user
end
