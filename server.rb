require 'sinatra'
require 'shotgun'
require 'csv'
require 'pry'

require_relative 'lib/wordanalysis'


get '/' do
 @sentences_to_be_displayed = []
 CSV.foreach("sentences.csv") do |sentence|
   @sentences_to_be_displayed << WordAnalysis.new(sentence[0])

 end
 erb :index
end

get '/new-sentence' do
  erb :new_sentence
end


post '/new-sentence' do
  @sentence = params["sentence"]

  CSV.open("sentences.csv", "ab") do |file|
    file << [@sentence]
  end

  redirect '/'
end
