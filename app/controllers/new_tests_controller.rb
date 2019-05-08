class NewTestsController < ApplicationController

  def index

  end

  def show
    # render plain:
    # redirect_to '/meetups/@post'
  end

  def create

  creation = params[:dates]
  render plain: params[:dates]

  end

  def new

  end

  def login

  end

  def available

  end
end