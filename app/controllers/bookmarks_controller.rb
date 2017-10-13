class BookmarksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bookmark, only: [:edit, :update, :destroy]

  # GET /bookmarks
  def index
    @bookmarks = current_user.bookmarks.page(params[:page])
    @bookmarks = @bookmarks.search(params[:query]) if params[:query].present?
  end

  # GET /bookmarks/new
  def new
    @bookmark = Bookmark.new
  end

  # GET /bookmarks/1/edit
  def edit
  end

  # POST /bookmarks
  def create
    @bookmark = current_user.bookmarks.new(bookmark_params)
    respond_to do |format|
      if @bookmark.save
        format.html do
          flash[:notice] = 'Bookmark was successfully created.'
          redirect_to action: :index
        end
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /bookmarks/1
  def update
    respond_to do |format|
      if @bookmark.update_attributes(bookmark_params)
        format.html do
          flash[:notice] = 'Bookmark was successfully updated.'
          redirect_to action: :index
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /bookmarks/1
  def destroy
    @bookmark.destroy
    respond_to do |format|
      format.html do
        flash[:notice] = 'Bookmark was successfully destroyed.'
        redirect_to action: :index
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def bookmark_params
    params.require(:bookmark).permit(:title, :url)
  end
end
