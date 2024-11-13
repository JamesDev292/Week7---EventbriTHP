class AttendancesController < ApplicationController
    #before_action :authenticate_user!, only: [:index, :show]

    def index
        @participant = Attendance.all
    end

    def edit
        @participant = Attendance.params[:id]
    end

end
