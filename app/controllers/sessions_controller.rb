class SessionsController < ApplicationController

    def new
    
      end

    def create
      
      @mom = Mom.find_by_email(params[:email])
      if @mom && @mom.authenticate(params[:password])
          session[:mom_id] = @mom.id
          redirect_to root_url, :notice => "Welcome" 
          
      else
        redirect_to new_mom_url, :notice => "Please Sign Up"
      end
    end

    def destroy
      reset_session
      redirect_to root_url, :notice => "See ya later!"
    end
  end