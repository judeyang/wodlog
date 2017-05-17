class ScoringsController < ApplicationController
  before_action :authenticate_user!

  def new
    @wod = Wod.find(params[:wod_id])
    @scoring = Scoring.new
  end

  def create
    @wod = Wod.find(params[:wod_id])
    @scoring = Scoring.new(scoring_params)
    @scoring.wod = @wod
    @scoring.user = current_user

    if @scoring.save
      flash[:notice] = "成功提交WOD Log"
      redirect_to wod_path(@wod)
    else
      render :new
    end
  end

  private

  def scoring_params
    params.require(:scoring).permit(:content, :log)
  end



end
