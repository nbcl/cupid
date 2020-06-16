class UreportsController < ApplicationController
    def new
        @ureport = Ureport.new
    end

    def create
      ureport_params = params.permit(:reason, :reported_id)
      @ureport = Ureport.create(ureport_params)
      if @ureport.save
        redirect_to '/'
      end
    end
end
