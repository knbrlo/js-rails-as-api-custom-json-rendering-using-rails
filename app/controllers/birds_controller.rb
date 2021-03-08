class BirdsController < ApplicationController
  def index
    birds = Bird.all
    if birds
      render json: @birds
    else
      render json: {message: 'Birds not found'}
    end
  end

  def show
    bird = Bird.find_by(id: params[:id])

    if bird
      # option 1
      #render json: {id: bird.id, name: bird.name, species: bird.species }

      # option 2
      #render json: bird.slice(:id, :name, :species)

      # option 3
      # render json: bird, only: [:id, :name, :species]

      # option 4
      # exclude the keys instead of including keys
      render json: bird, except: [:created_at, :updated_at]
    else
      render json: {message: 'Bird not found'}
    end
  end
end