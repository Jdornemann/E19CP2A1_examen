class HolidaytasksController < ApplicationController
  before_action :set_holidaytask, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /holidaytasks
  # GET /holidaytasks.json
  def index
    @holidaytask =  User.find(current_user.id).holidaytasks
   
  end

  # GET /holidaytasks/1
  # GET /holidaytasks/1.json
  def show
  end

  # GET /holidaytasks/new
  def new
    @holidaytask = Holidaytask.new
    @user = User.find(params[:user_id])
  end

  # GET /holidaytasks/1/edit
  def edit
  end

  # POST /holidaytasks
  # POST /holidaytasks.json
  def create
    @user = User.find(helpers.current_user.id)
    @user.holidaytasks << Holidaytask.new(holidaytask_params)
    @user.save
     redirect_to user_holidaytasks_path
    # respond_to do |format|
    #   if @holidaytask.save
    #     format.html { redirect_to user_holidaytask_path(current_user), notice: 'Holidaytask was successfully created.' }
    #     format.json { render :show, status: :created, location: @holidaytask }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @holidaytask.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /holidaytasks/1
  # PATCH/PUT /holidaytasks/1.json
  def update
    respond_to do |format|
      if @holidaytask.update(holidaytask_params)
        format.html { redirect_to @holidaytask, notice: 'Holidaytask was successfully updated.' }
        format.json { render :show, status: :ok, location: @holidaytask }
      else
        format.html { render :edit }
        format.json { render json: @holidaytask.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /holidaytasks/1
  # DELETE /holidaytasks/1.json
  def destroy
    @holidaytask.destroy
    respond_to do |format|
      format.html { redirect_to holidaytasks_url, notice: 'Holidaytask was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holidaytask
      @holidaytask = Holidaytask.find(params[:id])
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def holidaytask_params
      params.require(:holidaytask).permit(:name, :description, :done, :photo)
    end
end
