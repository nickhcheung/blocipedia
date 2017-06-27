class UsersController < ApplicationController
  def downgrade
    @user = current_user

    @user.standard!
    @user.wikis.update_all(private: false)

    if @user.save
      flash[:notice] = "Your Blocipedia membership has been updated to 'standard'. All of your private Wiki's are now public!"
      redirect_to root_path
    else
      flash[:error] = "There was an error updating your account. Please try again."
      redirect_to :back
    end
  end
end
