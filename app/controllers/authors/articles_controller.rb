module Authors
	class ArticlesController < AuthorController

		def index
			@articles = current_author.article.all # sort acc to timestamp later
		end

		def show
			@article = current_author.article.find(params[:id])
		end

		def new
			@article = current_author.article.new
		end

		def edit
			@article = current_author.article.find(params[:id])
		end

		def create
			#render plain: params[:post].inspect
			@article = current_author.article.new(article_params)

			if(@article.save)
				redirect_to authors_articles_path
			else
				render 'new'
			end
		end

		def update	
			@article = current_author.article.find(params[:id])

			if(@article.update(article_params))
				redirect_to @article
			else
				render "edit"
			end
		end

		def destroy
			@article = current_author.article.find(params[:id])
			@article.destroy

			redirect_to author_articles_path
		end



		private def article_params
			params.require(:post).permit(:title, :body)
		end
		
	end

end