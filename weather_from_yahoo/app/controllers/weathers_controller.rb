class WeathersController < ApplicationController
  def index
    @response = Weather.lookup(2459115, Weather::Units::FAHRENHEIT)
    @image = @response.image
    @forecasts = @response.forecasts[0..4]
  end

  def blah
    @response = Weather.lookup(2459115, Weather::Units::FAHRENHEIT)
    @forecasts = @response.forecasts[0..4]
    render 'index.html.erb'
  end 
end
