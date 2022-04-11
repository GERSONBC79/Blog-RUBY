class ArticlesController < ApplicationController
    
   # http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy
    def authenticate 
        authenticate_or_request_with_http_basic do |username, password|
            username ==  Rails.application.secrets.usuario_admin && password == Rails.application.secrets.admin_password
        end
    end     

    def index
        @articles = Article.all
    end
    
    def show
        @article = Article.find(params[:id])
        respond_to do |f|
            f.html
            f.js
        end
    end

    def new
        #
        
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def create
       
        @article = Article.new(article_params)
 
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end

    def update
        @article = Article.find(params[:id])
       
        if @article.update(article_params)
          redirect_to @article
        else
          render 'edit'
        end
    end

    def destroy
       
        authenticate
        return 
        
        @article = Article.find(params[:id])
        @article.destroy
       
        redirect_to articles_path
    end

    private
        def article_params
            params.require(:article).permit(:title, :text)
        end

end
