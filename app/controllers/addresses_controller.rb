class AddressesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @address = @addressable.build_address(address_params)
    @address.save
    redirect_to @addressable, notice: "Your address has been created."
  end

  def update
    @address = @addressable.build_address(address_params)
    if @user.update_attributes(user_params)
      # Handle a successful update.
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @address.destroy
    flash[:success] = "Micropost deleted"
    redirect_to request.referrer || root_url
  end

  private 

  	def address_params
      params.require(:address).permit(:line1, :line2, :city, :state, :zip )
    end

    def correct_user
      @address = current_user.addresses.find_by(id: params[:id])
      redirect_to root_url if @address.nil?
    end
end