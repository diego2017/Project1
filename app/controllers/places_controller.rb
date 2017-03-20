class PlacesController <ApplicationController
  def index
    @user = User.find_by_id(session[:user_id])
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
  end

  def new

  end

  def edit

  end

end
