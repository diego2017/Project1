class UsersController <ApplicationController

  before_action :authenticate_user, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(clean_params)
    if @user.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def clean_params
    params.require(:user).permit(:name, :email, :password)
  end
end
