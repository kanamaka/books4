class Book < ApplicationRecord
    belongs_to :User
    validates :title, presence: true
    validates :body, presence: true, length: {maximum:200}

end
