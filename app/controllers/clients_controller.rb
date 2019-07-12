class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:name, :born_on, :occupation, :line1, :line2, :city, :state, :zip, :primary_social, :spouse_social, :spouse_name, :spouse_born_on, :spouse_occupation, :you_dependent, :support, :dependent1_name, :dependent1_born_on, :dependent1_social, :dependent1_relationship, :dependent1_home, :dependent1_disabled, :dependent1_student, :dependent2_name, :dependent2_born_on, :dependent2_social, :dependent2_relationship, :dependent2_home, :dependent2_disabled, :dependent2_student, :dependent3_name, :dependent3_born_on, :dependent3_social, :dependent3_relationship, :dependent3_home, :dependent3_disabled, :dependent3_student, :dependent4_name, :dependent4_born_on, :dependent4_social, :dependent4_relationship, :dependent4_home, :dependent4_disabled, :dependent4_student, :dependent5_name, :dependent5_born_on, :dependent5_social, :dependent5_relationship, :dependent5_home, :dependent5_disabled, :dependent5_student, :dependent1_support, :dependent2_support, :dependent3_support, :dependent4_support, :dependent5_support)
    end
end
