module InsurerArea
  class HomeController < ApiController
    def index
      render json: {message: "Olá, meu amigo Insurer!"}
    end
  end
end
