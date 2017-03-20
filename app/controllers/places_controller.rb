class PlacesController <ApplicationController
  def index
    @user = User.find_by_id(session[:user_id])
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new
    @place = Place.new
  end

  def create

    @place = Place.new(clean_params)
    @place.user = @current_user

    # raise
    if @place.save
      # raise
      redirect_to root_path
    else
      render :new
    end
  end

  def edit

  end

  def destroy
    Place.find(params[:id]).destroy
    redirect_to root_path
    # redirect_to controller: "countries", action: "show", country_id: @country.id
  end

  private
  def clean_params
    params.require(:place).permit(:name, :int_number, :street_number, :street_name, :suburb, :state, :postcode, :country, :geo_location)
  end

end
