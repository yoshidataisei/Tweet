class PutsController < ApplicationController
    def index
        @put = current_user.puts.build
        @puts = Put.order(created_at: "desc").page(params[:page]).per(5)
    end
    
    def show 
        @put = Put.find(params[:id])
    end
end
