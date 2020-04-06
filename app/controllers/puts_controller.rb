class PutsController < ApplicationController
    def index
        @put = current_user.puts.build
        @puts = Put.order(created_at: "desc").page(params[:page]).per(5)
    end
    
    def show 
        @put = Put.find(params[:id])
    end
    
    def new 
        @put = Put.new
    end
    
    def create
        @put = Put.new(put_params)
    if  @put.save
            flash[:success] = "成功"
            redirect_to puts_path
    else
            flash[:danger] = "失敗"
            render :new
    end
    end
    
    def edit
        @put = Put.find(params[:id])
    end
    
    def update
        @put = Put.find(params[:id])
        if  @put.update(put_params)
            redirect_to puts_path
        else 
            render :edit
        end
    end
    
    private
     
    def put_params
        params.require(:put).permit(:username, :title, :body)
    end

end