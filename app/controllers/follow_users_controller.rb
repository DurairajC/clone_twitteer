class FollowUsersController < ApplicationController
    
    def index
    
    end
    
    def create
        
        @follow_user = FollowUser.new
        @follow_user.follower = current_user.id
        @follow_user.following = params[:following]
        @follow_user.save
    
        respond_to do |format|
          if @follow_user.save
            format.html { redirect_to root_path, notice: 'User followed successfully.' }
            format.json { render :show, status: :created, location: @follow_user }
          else
            format.html { render :new }
            format.json { render json: @follow_user.errors, status: :unprocessable_entity }
          end
        end
    
    end
    
end
