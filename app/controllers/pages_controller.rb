class PagesController < ApplicationController
  def home
    render 'home'
  end

  def results
    @mood = params['mood']
    # photo API
    @photo = query_unsplash(mood(params['mood']),"portrait")
    # color API

    # music API
    # poetry API
    # event API
    @event = query_foursquare(mood(params['mood']),params['coordinates'])
    render 'results'
  end
end
