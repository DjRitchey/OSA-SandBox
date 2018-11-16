class HomeController < ApplicationController

  def landing_page

  end

  def time_fiddler
    if params[:time]
      @time = params[:time]
      @display = Chronic.parse(@time).strftime("%a, %B %d, %Y")

    end
    render :time_fiddler
  end

end
