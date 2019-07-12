class TaxpayersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :following, :followers]
  before_action :correct_user, only: [:edit, :update]
  

  # GET /taxpayers
  # GET /taxpayers.json
  def index
    @taxpayers = Taxpayer.all
  end

  # GET /taxpayers/1
  # GET /taxpayers/1.json
  def show
    @taxpayer = Taxpayer.find(params[:id])
  end

  # GET /taxpayers/new
  def new
    @taxpayer = Taxpayer.new
  end

  # GET /taxpayers/1/edit
  def edit
  end

  # POST /taxpayers
  # POST /taxpayers.json
  def create
    @taxpayer = current_user.taxpayers.build(taxpayer_params)
    if @taxpayer.save
      flash[:success] = "Tax document uploaded!"
      redirect_to taxpayers_path
    else
      @feed_items = [ ]
      render 'taxpayers/index'
    end
  end

  # PATCH/PUT /taxpayers/1
  # PATCH/PUT /taxpayers/1.json
  def update
    respond_to do |format|
      if @taxpayer.update(taxpayer_params)
        format.html { redirect_to @taxpayer, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @taxpayer }
      else
        format.html { render :edit }
        format.json { render json: @taxpayer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxpayers/1.json
  def destroy
    Taxpayer.find(params[:id]).destroy
    flash[:success] = "Document deleted"
    redirect_to taxpayers_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxpayer
      @taxpayer = Taxpayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxpayer_params
      params.require(:taxpayer).permit(:content, :attachment)
    end


      # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end

    
end
