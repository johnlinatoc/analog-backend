class Api::V1::UsersController < ApplicationController
    def show
        byebug
    end
    
    def update
        user = User.find_by(id: params[:id])
        user.update(username: params[:username])
        render json: { id: user.id, username: user.username, token: token }
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
        render json: {}, status: :no_content
    end

    def create
        user = User.create(username: params[:username], password_digest: params[:password])
        render json: { id: user.id, username: user.username}
    end
end
