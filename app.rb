require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end
  get "/say/:number/:phrase" do
    total_string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      total_string += "#{@phrase}"
    end
    total_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    "#{@number1 + @number2}""#{@number1 - @number2}""#{@number1 * @number2}""#{@number1 / @number2}"

  end

end
