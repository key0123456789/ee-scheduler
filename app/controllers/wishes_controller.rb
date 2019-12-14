class WishesController < ApplicationController
  before_action :set_wish, only: [:show, :edit, :update, :destroy]

  # GET /wishes
  # GET /wishes.json
  def index
    @choises = Choise.all
  end

  # GET /wishes/1
  # GET /wishes/1.json
  def show
  end

  # GET /wishes/new
  def new
    @choise = Choise.new
    # @choise.test_methods.build
    # @wish = Wish.new
  end

  # GET /wishes/1/edit
  def edit
  end

  # POST /wishes
  # POST /wishes.json
  def create
    @choise = Choise.new(choise_params)
    # @wish = Wish.new(wish_params)

    # respond_to do |format|
    #   if @wish.save
    #     format.html { redirect_to @wish, notice: 'Wish was successfully created.' }
    #     format.json { render :show, status: :created, location: @wish }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @wish.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /wishes/1
  # PATCH/PUT /wishes/1.json
  def update
    respond_to do |format|
      if @wish.update(wish_params)
        format.html { redirect_to @wish, notice: 'Wish was successfully updated.' }
        format.json { render :show, status: :ok, location: @wish }
      else
        format.html { render :edit }
        format.json { render json: @wish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wishes/1
  # DELETE /wishes/1.json
  def destroy
    @wish.destroy
    respond_to do |format|
      format.html { redirect_to wishes_url, notice: 'Wish was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wish
      @wish = Wish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wish_params
      params.require(:wish).permit(:name, :start_time)
      # params.require(:wish).permit(:name, :start_time, tests_attributes: [:id, :test_name, :test_day])
    end

    def choise_params
      params.require(:choise).permit(:college, :fuculty, :department, :condition, method_attributes[:id, :test_name, wish_attributes[:id, :name, :start_time]])
    end
end
