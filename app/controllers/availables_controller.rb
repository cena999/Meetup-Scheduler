class AvailablesController < ApplicationController
  def index
  end

  def new
    @meetup = Meetup.find(params[:meetups_id])
    # @schedules = Schedule.all.where(meetup_id: @meetup)
  end


  def create
    # render plain: params[:available].inspect
    # puts "schedule id 3 ----"
    # puts available_params["schedule_ids"]["3"]["id"]
        render plain: available_params.inspect

    # @available = Available.new(available_params)

    # @res = params[:available]

    # if @available.save
    #   redirect_to "/meetups/#{:meetups_id}/edit"
    # else
    #   @meetup = Meetup.find(params[:meetups_id])
    #   @schedules = Schedule.all.where(meetup_id: @meetup)
    #   render 'new'
    # end
  end

  private
  def available_params
    params.require(:available).permit(:person_name, :schedule_ids => {})
  end


end