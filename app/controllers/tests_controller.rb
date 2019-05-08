class TestsController < ApplicationController

  def index

  end

  def show
    # render plain:
    # redirect_to '/meetups/@post'
  end

  def create
  value = params[:test]["session"]
  # render plain: value
  value_password = params[:test]["password"]
  meetups = Meetup.all

      meetups.each do |meetup|
        if (meetup.id == value.to_i) || (meetup.name == value)
            # render plain: params[:test]
            route_id = meetup.id
            redirect_to "/meetups/#{route_id}" and return

        elsif (meetup.id == value.to_i) && (meetup.password) == value_password || (meetup.name == value) && (meetup.password) == value_password
            route_id = meetup.id
            redirect_to "/meetups/#{route_id}" and return
        end
      end
end

  def new

    creation = params[:dates]

    # render plain: creation
    @meetup = Meetup.new(name: params[:dates]['name'], description: params[:dates]['description'], )
    @meetup.save
    @meetup_id = @meetup.id
    # @schedule = Schedule.new(meetup_id: 25)
    # @schedule.save
    redirect_to "/meetups/#{@meetup.id}/edit"
    # redirect_to "/meetups/2/edit"

  end

  def login

  end

  def available

  end


    private

    def creation
      params.require(:meetup).permit(:name, :description, :password, schedules_attributes: [:id, :date, :_destroy])

      params.require(:schedule).permit(:date)
    end
end