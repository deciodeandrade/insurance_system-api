module AdminArea
  class HomeController < ApiController
    def index
      render json: {message: "Olá, meu amigo Admin!"}
    end
  end
end
