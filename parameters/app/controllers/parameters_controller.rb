class ParametersController < ApplicationController

  def name
    @name = params[:first_name]
  end

  def first_letter
    @first_letter = params[:alphabet]
    if @first_letter[0].downcase === "a"
      @message = "Your first letter began with A!"
    else
      @message = "Sorry this letter does not contain A!"
    end
  end

  def guess
    winner = 25
    @guess = params[:number].to_i
    if
      @guess === winner
    @message = "You Guessed Right"
    elsif
      @guess > winner
    @message =  "Lower"
    else
    @message =  "Higher"
    end
  end

  def test
    @test = params[:color]
      if params[:color] === "black"
        @message = "Black is an awesome color to pick"
      elsif params[:color] === "yellow"
        @message = "Yellow is ok"
      else
        @message = "Ok I respect your color"
      end
  end

  def wildcard_example
    @wildcard_example = params[:hello]
  end


  def form_numbers
    @form_numbers = params[:form_message].to_i
    number = 36
    if @form_numbers === number
      @message = "You Guessed Right"
    elsif @form_numbers > number
      @message =  "Lower"
    else
    @message =  "Higher"
    end
  end

  def form
    render "form.html.erb"
  end

  def form_post
    @message = params[:message],
    @second = params[:second]
    render "form.html.erb"
  end
end
