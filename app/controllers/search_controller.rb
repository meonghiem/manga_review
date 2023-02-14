class SearchController < ApplicationController
  def get
      
  end

  def search
      @mangas = Manga.where("title LIKE ?", "%"  + params[:keyword] + "%")
  end
end
