class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	def hello
    render html: "¡hola, mundo!"
  end
	def goodbye
		render html: "¡adios, mundo!"
	end
	def whodidit
		render html: "bush did 9/11"
	end
end
