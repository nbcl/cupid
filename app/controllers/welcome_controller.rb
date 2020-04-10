class WelcomeController < ApplicationController
    def hello
        @message = "Hello from the controller!"
        @items = ['item1', 'item2', 'item3']
        render
    end

    def square
        @value = params[:value].to_i
        @result = @value * @value
        render
    end
end
