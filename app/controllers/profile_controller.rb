class ProfileController < ApplicationController
	def update
    	@user = User.find(params[:id])
    	@profile = @user.profile
      @profile.update(profile_params)
    	respond_to do |format|
      		format.json {respond_with_bip(@profile)}
    	end
    # puts "***********"
    # puts @profile.errors.full_messages
    # #redirect_to user_path(@user), notice: "Sucessfully updated profile."
  	end
	private
    def profile_params
      params.require(:profile).permit(:fname, :lname, :email, :birthday, :work, :exp_level)
    end

end
