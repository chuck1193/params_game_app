class Api::GuessingNumbersController < ApplicationController
  def first
    @name = params[:letter]

    if @name[0].downcase == 'A'
      @message = "Hey your name starts with the first letter of the alphabet"
    else 
      @message = "Your name is wierd!"
    end
    render 'first.json.jbuilder'
  end

  def guessing_a_number
    @num = params[:number].to_i
    @message = "Guess a number between 1 and 100"
    @number = 23

    if @num > @number
      @message_2 = "Too High"
    elsif @num < @number
      @message_2 = "Too Low"
    else
      @message_2 = "You did it!"
    end
    render 'guessing_a_number.json.jbuilder'
  end
end
