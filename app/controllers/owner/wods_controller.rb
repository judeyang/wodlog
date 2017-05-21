class Owner::WodsController < ApplicationController


  before_action :authenticate_user!, only: [:new, :create, :update, :edit, :destroy]
  before_action :require_is_owner
  layout "owner"


   def show
     @wod = Wod.find(params[:id])
     @scorings = @wod.scorings
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
       redirect_to owner_wods_path
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
       redirect_to owner_wods_path
     else
       render :edit
     end
   end

   def destroy
     @wod = Wod.find(params[:id])

     @wod.destroy

     redirect_to owner_wods_path
   end

   def publish
    @wod = Wod.find(params[:id])
    @wod.publish!

    redirect_to :back
  end

  def hide
    @wod = Wod.find(params[:id])
    @wod.hide!

    redirect_to :back
  end






   private

   def wod_params
     params.require(:wod).permit(:is_task_priority, :is_time_priority, :is_hidden,:wodname, :description, :introduction, :wodtype, :box)
   end

end
