class GetawaysController < ApplicationController
  def index
    city=params[:city]
    checkin=params[:checkin]
    checkout=params[:checkout]
    uri = URI.escape("http://deals.expedia.com/beta/deals/hotels.json?city=#{city}&checkin=#{checkin}&checkout=#{checkout}")
    @deals = HTTParty.get("#{uri}").parsed_response

    if params[:city] == ''
      flash[:notice] = "Please enter a city"
    end
  end
end
