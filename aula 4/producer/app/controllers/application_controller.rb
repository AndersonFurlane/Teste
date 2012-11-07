class ApplicationController < ActionController::Base
  protect_from_forgery

  #com essa definição a classe PostController vai herda o comportamento,
  #nao precisando declarar esses atributos la.
  respond_to :json, :html, :xml

end
