require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @num = params[:number].to_i
    a = @num ** 2
    a.to_s
  end

  get "/say/:number/:phrase" do
    @times = params[:number].to_i
    @phrase = params[:phrase].to_s

    string = ''

    @times.times do string += @phrase end
      string

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
    @oper = params[:operation].to_s
# binding.pry
    if @oper == 'add'
      add = @number1 + @number2
      add.to_s
    elsif @oper == 'subtract'
      subtract = @number1 - @number2
      subtract.to_s
    # binding.pry
    elsif @oper == 'multiply'
      multi = @number1 * @number2
      multi.to_s
    else @oper == 'divide'
      divi = @number1 / @number2
      divi.to_s
    end

  end



end
