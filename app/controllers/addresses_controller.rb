class AddressesController < OpenReadController
  def index
    puts "#{current_user.addresses}"
    addresses = current_user.addresses
    render json: addresses
  end

  def show
    render json: current_user.addresses[:id]
    # render json: User.find(params[:id]).addresses[:addr_id]
  end

  def create
    address = current_user.addresses.create(addr_params)
    if address.save!
      render json: address
    else
      render json: address.errors, status: :unprocessable_entity
    end
  end

  def update
    address = Address.find(addr_params[:id])
    if address.update!(addr_params)
      render json: address
    else
      render json: address.errors, status: :unprocessable_entity
    end
  end

  def destroy
    # TODO
    address = Address.find(addr_params[:id])
    address.destroy!
  end

  private

  def addr_params
    params.permit(:id, :street, :city, :state, :country, :zipcode, :name)
  end
end
