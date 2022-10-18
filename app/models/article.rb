class Article < ApplicationRecord
    include Visible
    has_many :comments, dependent: :destroy  # sista gör att alla dependant comments delete om article deletes
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

end
