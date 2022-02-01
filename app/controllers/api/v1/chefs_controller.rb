class Api::V1::ChefsController < ApplicationController
  def index
    @chefs = Chef.all

    render json: { data: @chefs }, status: :created
  end

  def create
    @chef = Chef.new(chefs_params)

    if @chef.save
      render json: { message: 'Chef created successfully', data: @chef }, status: :created
    else
      render json: { message: 'There was an error' }, status: :unauthorized
    end
  end

  def delete_chef
    chef = Chef.find(params[:chef_id])

    if chef
      chef.reservations&.delete_all
      chef.delete
      render json: { message: 'Chef deleted' }, status: :ok
    else
      render json: { message: 'Chef not found' }, status: :ok
    end
  end

  private

  def chefs_params
    params.require(:chef).permit(
      :name,
      :image,
      :description,
      :price,
      :duration,
      :number_of_foods
    )
  end
end
