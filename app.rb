require_relative 'config/environment'
require "pry"

class App < Sinatra::Base

  get'/reversename/:name'do 
   reversed_name = (params[:name]).reverse 
  end
   
  get'/square/:number'do
   make_an_integer = ((params[:number].to_i))
   squared_number =(make_an_integer * make_an_integer) 
   back_to_string = squared_number.to_s
   back_to_string 
  end 
  
  get'/say/:number/:phrase'do
   string_to_number =(params[:number].to_i)
   @word = params[:phrase]
   word_multiplied = @word * string_to_number 
  end

  get'/say/:word1/:word2/:word3/:word4/:word5'do

  new_sentence = (params[:word1] +" " + params[:word2]+ " " + params[:word3]+ " " + params[:word4]+ " " + params[:word5]+ ".")
  end 

  get'/:operation/:number1/:number2' do 

    @x = params[:number1].to_i
      
    @y = params[:number2].to_i

    answer = "unable to perform this operation"
    
    case params[:operation]
    when "add"
     answer = (@x+@y).to_s 
    when "subtract" 
     answer = (@y-@x).to_s 
    when "multiply"
     answer = (@x*@y).to_s 
    when "divide"  
     answer = (@x/@y).to_s 
    end 
  end 
end