# Class in charge of creating new Reports for Locals
class LreportsController < ApplicationController
  def new
    @lreport = Lreport.new
  end

  def create
    lreport_params = params.permit(:reason, :reported_id)
    @lreport = Lreport.create(lreport_params)
    redirect_to '/' if @lreport.save
  end
end
