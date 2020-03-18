class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user, only: [:show, :edit]

    def index 
        @users = User.all
    end

	def show
	end

	def edit
		@user = User.new
	end

	def update
		if @user.update(user_params) then
        redirect_to @user, flash: {success: " Your account is up-to-date !" }
        else
        render :edit
        end
	end

	def destroy
        @user.destroy
        redirect_to users_url, flash: {success: "Your account has been deleted !" } 
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
        begin
          @user = User.friendly.find(params[:id])
        rescue
          redirect_to new_user_session, flash: {danger: "This user doesn't exist !" }
        end
      end

    # Only allow a list of trusted parameters through.
    def user_params
        params.fetch(:user, {}).permit(:first_name, :last_name, :pseudo)
      end
end
