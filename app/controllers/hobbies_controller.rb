class HobbiesController < ApplicationController
  def create
    user = User.find(params[:id])
    hobby = user.hobbies.build(hobby_params)
      if hobby.save
      render json: user.hobbies, status: :created
    else
      render json: { error: hobby.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def hobby_params
    params.require(:hobby).permit(:name, :description) # Add any other permitted attributes
  end
end
