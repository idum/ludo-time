class EventsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_event, only: [:show, :edit, :update, :destroy]
    
    def index
        @events=Event.all 
    end

    def show

    end

    def new
        @event=Event.new
    end
    
    def create
        @event = Event.new(event_params)

        if @event.save
          redirect_to events_path, notice: "Event was successfully created."
        else
          render :new, status: :unprocessable_entity
        end
    end

    def edit

    end
       
     
    def update
            
        if @event.update(event_params)
            redirect_to events_path, notice: "Event was successfully updated."
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy

        @event.destroy
        respond_to do |format|
            format.html { redirect_to events_path, notice: "Event was successfully destroyed." }
            format.turbo_stream
        end
    end

    private

    def set_event
        @event = Event.find(params[:id])
    end
    

    def event_params
        params.require(:event).permit(:title, :location, :date)
    end
end
