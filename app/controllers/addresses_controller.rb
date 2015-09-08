class AddressesController < OpenReadController

  def index
    puts "#{current_user.addresses}"
    addresses = User.find(params[:id]).addresses
    render json: addresses
  end

  def show
    # current_user.addresses[:id + 1]
    puts "address id #{:addr_id}"
    render json: User.find(params[:id]).addresses[:addr_id]
  end

  def create
    # TODO
    book = Address.create(book_params_with_user_id)
    if book.save!
      render json: book
    else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  def update
    #TODO
    book = Address.find(params[:id])
    if book.update!(book_params)
      render json: book
    else
      render json: book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    # TODO
    book = Address.find(params[:id])
    book.destroy!
  end

  private
  def addr_params
    params.require(:book).permit(:id, :street, :city, :state, :coutry, :zip_code, :addr_id)
  end

  def address_params
    current_params = addr_params
    current_params["addr_id"] = current_user.id
    current_params
  end
end
