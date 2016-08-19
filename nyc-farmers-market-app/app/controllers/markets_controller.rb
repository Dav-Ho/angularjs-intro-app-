class MarketsController < ApplicationController
  def index
    @markets = Unirest.get('https://data.cityofnewyork.us/resource/hsry-3x74.json').body
    @sats = Unirest.get('https://data.cityofnewyork.us/resource/734v-jeq5.json').body
  end
end 
