module PolicyHolderArea
  class HomeController < ApiController
    def index
      render json: {message: "Olá, meu amigo PolicyHolder!"}
    end
  end
end
