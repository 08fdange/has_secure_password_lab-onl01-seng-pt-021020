class SessionsController < ApplicationController 
    
    def new
        if logged_in
            redirect_to '/welcome'
        else
            render :login
        end
    end
    
    def create
        @user = User.find_by(name: params[:user][:name])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            redirect_to '/welcome'
        else
            redirect_to '/login'
        end

    end

    def destroy
        session.delete :user_id
        redirect_to '/login'
    end

end