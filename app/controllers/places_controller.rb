class PlacesController <ApplicationController
  def index
    @user = User.find_by_id(session[:user_id])
    @places = Place.all
  end

  def show
    @place = Place.find(params[:id])
    @review = Review.new
    # @feature_reviews = {}
    # @place.features.each do |f|
    #   # this will return a hash of the count of both true & false values for a particular feature
    #   @feature_reviews[f.id] = Review.where(place_id: @place.id, feature_id: f.id).group(:like).count
    # end
    # now @feature_reviews will look something like this:
    # {
    #   2 => {false => 1, true => 2},
    #   4 => {false => 3, true => 4},
    #   5 => {false => 2, true => 5}
    # }

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
    @place = Place.find(params[:id])
    @features = Feature.all
  end

  def update
    # raise


    @place = Place.find(params[:id])

    # update features
    # first delete all associations
    @place.features.delete_all
    # then recreate each feature association that was checked in the form
    params[:features].each do |feature_id|
      @place.features << Feature.find( feature_id )
    end

    # @place.user = @current_user

    if @place.update_attributes(clean_params)
      redirect_to controller: "places", action: "show", place_id: @place.id
    else
      render :edit
    end
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
