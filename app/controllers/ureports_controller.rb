# Class in charge of Creating new Reports for Users
class UreportsController < ApplicationController
  def new
    @ureport = Ureport.new
  end

  def create
    ureport_params = params.permit(:reason, :reported_id)
    @ureport = Ureport.create(ureport_params)
    redirect_to '/' if @ureport.save
  end
end
