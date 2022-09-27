Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create]

  def create
    bird = Bird.create(name: params[:name], species: params[:species])
    render json: bird, status: :created
  end
  
end
