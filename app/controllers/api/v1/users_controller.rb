class Api::V1::UsersController < ApplicationController
    def update
        user = User.find_by(id: params[:id])
        user.update(username: params[:username])
        render json: { id: user.id, username: user.username, token: token }
    end
end
