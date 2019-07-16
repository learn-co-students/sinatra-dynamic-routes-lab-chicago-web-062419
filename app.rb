require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get '/reversename/:name' do
      @user_name = params[:name]
      reversed_name = @user_name.reverse
      reversed_name
    end

    get '/square/:number' do
      @user_number = params[:number].to_i
      square = @user_number * @user_number
      square.to_s
    end

    get '/say/:number/:phrase' do
      @number = params[:number]
      @phrase = params[:phrase]
      num = @number.to_i
      (@phrase + " ") * num    
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @user_word1 = params[:word1]
      @user_word2 = params[:word2]
      @user_word3 = params[:word3]
      @user_word4 = params[:word4]
      @user_word5 = params[:word5]
      "#{@user_word1} #{@user_word2} #{@user_word3} #{@user_word4} #{@user_word5}."
    end

    get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      if @operation == 'add'
        result = @number1 + @number2
        result.to_s
      elsif @operation == 'subtract'
        result = @number1 - @number2
        result.to_s
      elsif @operation == 'multiply'
        result = @number1 * @number2
        result.to_s
      elsif @operation == 'divide'
        result = @number1 / @number2
        result.to_s
      end
    end
end