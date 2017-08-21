class Comment < ApplicationRecord
	acts_as_tree order: 'created_at DESC'

	def to_digraph_label
	  title
	end
end
