class UsersController < ApplicationController
	def index
		@users_count = User.count
        @users = User.all
	end
	def show
      user_id =params[:id]
      @user = User.find(user_id)
    end

    def new

      @user = User.new

    end
    def create
     @user = User.new(user_params)
     if @user.save
       redirect_to(users_path())
     else
       flash[:error]='User create faild!!!:('
       render :new
     end
    end
  def edit
    @user=User.find(params[:id])
  end
  def update
    @user=User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
      else
        render :edit
    end
  end
  def destroy
    @user=User.find(params[:id])
    user_name=@user.username
    @user.destroy
    flash[:notice] = "User with name: #{user_name} is successfuly deleted :)"
    redirect_to users_path
  end

  private

    def user_params
      params.require(:user).permit(:username, :password, :first_name, :last_name, :email)
    end

end
