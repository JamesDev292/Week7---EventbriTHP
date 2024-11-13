class PicturesController < ApplicationController

    def create
        @event = Event.find(params[:event_id])

        @event.pictures.attached(params[:pictures])
        redirect_to event_path(@event), notice: "Image uploaded successfully."

    end
end
