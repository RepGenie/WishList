class ProfilesController < ApplicationController
	before_filter :load_user
	
	def create
		@profile = @user.profiles.new(params[:profile])
		if @profile.save
			redirect_to @user, :notice => "Profile created"
		else
			redirect_to @user, :alert => "Unable to add profile"
		end
	end
	
	def destroy
		@profile = @user.profiles.find(params[:id])
		@profile.destroy
		redirect_to @user, :notice => "Profile deleted"
	end
	
	private
		def load_user
			@user = User.find(params[:user_id])
		end
end
