class CommentsController < ApplicationController
    
    def authenticate 
        authenticate_or_request_with_http_basic do |username, password|
            username ==  Rails.application.secrets.usuario_admin && password == Rails.application.secrets.admin_password
        end
    end    

    def new
        @article = Article.find(params[:article_id])
        @comment = @article.comments.new
        
    end

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        respond_to do |f|
            if @comment.save
                #article_path(@article) {redirect_to @comment.article}
                f.html { redirect_to :index}
                f.js 
            else
                #render 'articles/show'
                f.html { render acttion: "new"}
                f.js 
            end 
        end
    end

    def destroy
        authenticate
        return 

        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy

        redirect_to article_path(@article)
    end
     
    private
        def comment_params
          params.require(:comment).permit(:commenter, :body, :picture)
        end 
end
