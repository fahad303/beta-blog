class ArticlesController < ApplicationController
    def index
    @articles = Article.all
    end
    
    def show
       @article = Article.find(params[:id])
    end
    
    def new
        @article = Article.new
    end
    
    def create
       @article = Article.new(article_params)
       if @article.save
           flash[:sucess] = "Your article save sucessfully"
           redirect_to article_path(@article)
       else
           render 'new'
       end
    end
    
    def edit
       @article = Article.find(params[:id]) 
    end
    
    def update
       @article = Article.find(params[:id])
       if @article.update(article_params)
           flash[:sucess] = "Your article have sucessfully updated"
           redirect_to article_path(@article)
       else
           render 'edit'
       end
    end
    
    def destroy
       @article =Article.find(params[:id])
       @article.destroy
       flash[:sucess] = "Your article has been deleted"
       redirect_to articles_path
    end
    
    private
    def article_params
        params.require(:article).permit(:name, :description)
    end
end
