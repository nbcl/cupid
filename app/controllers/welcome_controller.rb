# frozen_string_literal: true

# This controller renders the primary view of the application
class WelcomeController < ApplicationController
  def hello
    render
  end

  def comuna
    @comunas = Comuna.all
    render 'pick_comuna'
  end
end
