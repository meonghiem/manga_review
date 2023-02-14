class FavouritesController < ApplicationController
  before_action :set_favourite, only: %i[ show edit update destroy ]

  # GET /favourites or /favourites.json
  def index  
    if user_signed_in?
      @favourites = Favourite.where(user_id: current_user.id)
    else
      @favourites = []
    end
  end

  # GET /favourites/1 or /favourites/1.json
  def show
    
  end

  # GET /favourites/new
  def new
    @favourite = Favourite.new
  end

  # GET /favourites/1/edit
  def edit
  end

  # POST /favourites or /favourites.json
  def create
    @favourite = Favourite.new(favourite_params)

    respond_to do |format|
      if @favourite.save
        url = '/mangas/'+ @favourite.manga_id.to_s
        format.html { redirect_to url, notice: "Favourite was successfully created." }
        format.json { render :show, status: :created, location: @favourite }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favourites/1 or /favourites/1.json
  def update
    respond_to do |format|
      if @favourite.update(favourite_params)
        format.html { redirect_to @favourite, notice: "Favourite was successfully updated." }
        format.json { render :show, status: :ok, location: @favourite }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @favourite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourites/1 or /favourites/1.json
  def destroy
    @favourite.destroy
    respond_to do |format|
      format.html { redirect_to favourites_url, notice: "Favourite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # DELETE /favourites/del?user_id=1&manga_id=1
  def del
    Favourite.delete_by(user_id: params[:user_id], manga_id: params[:manga_id])
    url = '/mangas/'+ params[:manga_id].to_s
    respond_to do |format|
      format.html { redirect_to url, notice: "Favourite was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favourite
      @favourite = Favourite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favourite_params
      params.require(:favourite).permit(:user_id, :manga_id)
    end
end
