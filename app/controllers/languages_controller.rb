class LanguagesController < ApplicationController
    def index
      @languages = Language.all
      render :index
    end
    def show
      @language = Language.find(params[:id])
      render :show
    end
    def new
      @language = current_user.languages.build
      render :new
    end
    def create
      @language = current_user.languages.build(list_params)
      if @language.save
        redirect_to  languages_path
      else
        render :new
      end
    end
    def destroy
      @language = Language.find(params[:id])
      @language.destroy
      redirect_to languages_path
    end

  private
    def list_params
      params.require(:language).permit(:name)
    end
  end
