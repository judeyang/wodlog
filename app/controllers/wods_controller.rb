class WodsController < ApplicationController
    def show
      @wod = Wod.find(params[:id])
    end

    def index
      @wods = Wod.all
    end

    def new
        @wod = Wod.new
      end

      def create
        @wod = Wod.new(wod_params)

        if @wod.save
          redirect_to wods_path
        else
          render :new
        end
      end

      def edit
        @wod = Wod.find(params[:id])
      end

      def update
        @wod = Wod.find(params[:id])
        if @wod.update(wod_params)
          redirect_to wods_path
        else
          render :edit
        end
      end

      private

      def wod_params
        params.require(:wod).permit(:wodname, :description)
      end
end
