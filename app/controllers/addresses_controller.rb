class AddressesController < OpenReadController

  def index
    puts "#{current_user.addresses}"
    addresses = User.find(params[:id]).addresses
    render json: addresses
  end

  def show
    render json: current_user.addresses[:id]
    # render json: User.find(params[:id]).addresses[:addr_id]
  end

  def create
    address = Address.create(addr_params)
    puts "==== addr params: #{addr_params}"
    if address.save!
      user_address = UserAddress.create(addr_id, current_user.id)
      if user_address.save!
        render json: address
      else
        render json: user_address.errors, status: :unprocessable_entity
      end
    else
      render json: address.errors, status: :unprocessable_entity
    end
  end

  def update
    #TODO
    address = Address.find(params[:id])
    if address.update!(address_params)
      render json: address
    else
      render json: address.errors, status: :unprocessable_entity
    end
  end

  def destroy
    # TODO
    address = Address.find(params[:id])
    address.destroy!
  end

  private
  def addr_params
    params.require(:info).permit(:id, :street, :city, :state, :coutry, :zip_code)
  end
end
