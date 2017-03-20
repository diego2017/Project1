class FeaturesController <ApplicationController
  def show
    @feature = Feature.find(params[:id])
  end

  def destroy

  end

end
