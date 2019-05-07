class TestsController < ApplicationController

  def index

  end

  def show
    # render plain:
    # redirect_to '/meetups/@post'
  end

  def create
  value = params[:test]["session"]


  meetups = Meetup.all

  meetups.each do |meetup|
    if meetup.id == value.to_i || meetup.name == value
        # render plain: params[:test]
        route_id = meetup.id
        redirect_to "/meetups/#{route_id}"
    end
  end

  end

  def new

  end

  def login

  end

  def available

  end
end