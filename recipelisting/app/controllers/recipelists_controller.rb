class RecipelistsController < ApplicationController
  before_action :set_recipelist, only: [:show, :edit, :update, :destroy]

  # GET /recipelists
  # GET /recipelists.json
  def index
    @recipelists = Recipelist.all
  end

  # GET /recipelists/1
  # GET /recipelists/1.json
  def show
  end

  # GET /recipelists/new
  def new
    @recipelist = Recipelist.new
  end

  # GET /recipelists/1/edit
  def edit
  end

  # POST /recipelists
  # POST /recipelists.json
  def create
    @recipelist = Recipelist.new(recipelist_params)

    respond_to do |format|
      if @recipelist.save
        format.html { redirect_to @recipelist, notice: 'Recipelist was successfully created.' }
        format.json { render :show, status: :created, location: @recipelist }
      else
        format.html { render :new }
        format.json { render json: @recipelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipelists/1
  # PATCH/PUT /recipelists/1.json
  def update
    respond_to do |format|
      if @recipelist.update(recipelist_params)
        format.html { redirect_to @recipelist, notice: 'Recipelist was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipelist }
      else
        format.html { render :edit }
        format.json { render json: @recipelist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipelists/1
  # DELETE /recipelists/1.json
  def destroy
    @recipelist.destroy
    respond_to do |format|
      format.html { redirect_to recipelists_url, notice: 'Recipelist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipelist
      @recipelist = Recipelist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipelist_params
      params.require(:recipelist).permit(:name, :price, :ingredients)
    end
end
