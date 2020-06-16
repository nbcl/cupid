class LreportsController < ApplicationController
    def new
        @lreport = Lreport.new
    end

    def create
      lreport_params = params.permit(:reason, :reported_id)
      @lreport = Lreport.create(lreport_params)
      if @lreport.save
        redirect_to '/'
      end
    end
end
