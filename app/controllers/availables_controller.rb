class AvailablesController < ApplicationController
  def index
  end

  def new
    @meetup = Meetup.find(params[:meetups_id])
    # @schedules = Schedule.all.where(meetup_id: @meetup)
  end


  def create
    # render plain: params[:person].inspect

    schedules = available_params[:schedule_ids]
    @meetup = Meetup.find(params[:meetups_id])


    pax = Person.create(:person_name => available_params[:person_name])

    schedules.each { |id| if id != "" then Schedule.find(id).people << pax end }

    redirect_to @meetup

  end

  private
  def available_params
    params.require(:meetup).permit(:person_name, :schedule_ids => [])
  end

end