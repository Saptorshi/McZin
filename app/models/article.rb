class Article < ApplicationRecord
	validates_presence_of :title, :body #length: {minimum: 5}
	validates :title, length: {minimum: 5}


	belongs_to :author

end
