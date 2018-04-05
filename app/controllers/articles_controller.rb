class ArticlesController < ApplicationController
    def new
    end

    def create
        # render plain: params[:article].inspect
        @article = Article.new(params[:article])

        @article.save
        redirect_to @article
    end

    #Strong parameters - requires us to tell Rails what params are allowed
    private
        def article_params
            params.require(:article).permit(:title, :text)
        end
end
