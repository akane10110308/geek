class UsersController < ApplicationController
    def show
        @user = User.find(params[:id]) 
        @user_posts = @user.posts
        @total_watch = @user_posts.sum(:watch)
    end
    def index
        @posts = Post.joins(:user).group("users.name").sum(:watch)
    end
end
