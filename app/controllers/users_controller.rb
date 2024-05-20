class UsersController < ApplicationController
  def create
    user = User.create(user_params)
    if user.present?
      render json: user, status: :created
    else
      render json: { error: "Failed to create user" }, status: :unprocessable_entity
    end
  end

  def index 
    users = User.all(fields: { hobbies: false }) 
    render json: users, status: :ok
  end

  def sort                                            
    sort_criteria = params[:sort].to_sym
    users=User.order(sort_criteria => -1).fields(hobbies: 0)
    render json: users, status: :ok
  end 
  

  def search
    search=params[:search].to_i
    users =  User.where(
      '$or' => [
        { name: /#{search}/i },
        { age: search.to_i }
      ]
    ).fields(hobbies: 0)
    render json: users, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:name, :age) 
  end
end
