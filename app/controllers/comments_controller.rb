class CommentsController < ApplicationController
  def new
    @language = Language.find(params[:language_id])
    @comment = @language.comments.new
  end
  def create
    @language = Language.find(params[:language_id])
    @comment = @language.comments.new(comment_params)
    if @comment.save
      redirect_to language_path(@comment.language)
    else
      render :new
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:comment, :name)
    end
  end
