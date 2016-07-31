class PagesController < ApplicationController

  def about

  end

  def hello_world
  end

  def the_end
  end

  def time
    @sum = 1 + 1
  end

  def fortune
    @hello = [
      "you will be rich",
      "you achieve immortality",
      "you suffer from greed."
    ]
  end

  def lottery
    @array = []
    6.times do
      @array << rand(1..70)
    end
  end

  def lyrics
    @lyrics = []
    number = 99
    while number > 0
      @lyrics << "#{number.to_s} bottles of beer on the wall"
      number -= 1
    end
  end
end
