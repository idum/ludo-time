class HomeController < ApplicationController

    def welcome
        redirect_to events_path if user_signed_in?
    end
end
