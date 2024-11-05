class EventsController < ApplicationController

    def index
        @event = Event.all
    end

    def show
        @event = Event.find(params[:id])
    end

    def new

    end 

    def create
        @event = Event.new(post_params)
        @event.admin_id = current_user.id

        if @event.save
            redirect_to events_path, notice: "Compte créé avec succès."
        else
            render :new
        end
    end

private

def post_params
    params.require(:event).permit(:start, :duration,:title, :description, :price, :location, :admin_id)
  end

end
