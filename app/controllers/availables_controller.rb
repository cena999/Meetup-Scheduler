class AvailablesController < ApplicationController
  def index
  end

  def new
    @meetup = Meetup.find(params[:meetups_id])
    @schedules = Schedule.all.where(meetup_id: @meetup)
  end


  def create
    render plain: params[:available].inspect
    # @available = Available.new(available_params)

    # if @available.save
    #  redirect_to @available
    # end
  end

  private
  def available_params
    params.require(:available).permit(:schedule_id, :person_name, :person_availables => [])
  end


end