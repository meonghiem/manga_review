class SortController < ApplicationController
  def sort
      @mangas = Manga.all.order(title: :asc)
  end
end
