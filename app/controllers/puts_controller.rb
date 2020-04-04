class PutsController < ApplicationController
    def index
        @puts = Put.order(created_at: "desc").page(params[:page]).per(5)
    end
end
