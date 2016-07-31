class ProblemsController < ApplicationController
  def ques1
    @ques1 = "#{params[:food1]} #{params[:food2]} #{params[:food3]}"
  end
  def ques2
    @ques2 = 0
    @array = [0]
    while @ques2 < 10
      @ques2 += 1
      @array << @ques2
    end
  end
  def ques3
    @ques3 = params[:pokemon1] + " " + params[:pokemon2]
  end
end
