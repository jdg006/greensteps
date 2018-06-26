class DeedsController < ApplicationController
  expose :deed, scope: -> { current_user.deeds }
  expose :station, -> {deed.station}

  def new; end

  def create
    if deed.save
      flash[:notice] = t('.success')
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  private

  def deed_params
    params.require(:deed).permit(:trash_bags, :before_photo, :after_photo, :station)
  end
end
