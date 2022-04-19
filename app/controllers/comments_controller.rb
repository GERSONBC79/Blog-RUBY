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
        if @comment.save
            redirect_to article_path(@article)
        else
            render 'articles/show'
        end 
        respond_to do |f|
            f.html #indica que formato de accion va a responder
            f.js  #cuando se responda una peticio  json, va a responder generando codigo js 
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
