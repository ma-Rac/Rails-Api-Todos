class ApplicationController < ActionController::Base
    #o snap.. I followed directions correctly.. who's gonna stop this train now? :shipit: 
   protect_from_forgery with: :exception
   skip_before_action :verify_authenticity_token
end
