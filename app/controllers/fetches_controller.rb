require 'net/http'
require 'uri'

class FetchesController < ApplicationController
    def create
        # location's zip code + key for request to external API
        key = 'zip=' + params['query'] + '&appid=4d20f38463d855c05b22ad489179acda'

        # sends request to url and parses/returns the information
        uri = URI.parse('http://api.openweathermap.org/data/2.5/forecast?' + key)
        request = Net::HTTP.get(uri)

        # renders the response from the API to the frontend
        render json: request
    end
end