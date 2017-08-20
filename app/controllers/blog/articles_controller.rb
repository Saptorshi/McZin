module Blog
	class ArticlesController < BlogController

		def index
			@articles = Article.all # sort acc to timestamp later
		end

		def show
			@article = Article.find(params[:id])
		end
		
	end

end