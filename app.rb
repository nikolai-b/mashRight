require 'rubygems'
require 'sinatra'
require 'sinatra/partial'
require 'slim'
require './sound_bite'
require 'tts'

configure do
  register Sinatra::Partial
  set :partial_template_engine, :slim
end

get '/' do
  slim :home
end

post '/rant' do
  one   = params['one']   || SoundBite::ONE.sample
  two   = params['two']   || SoundBite::TWO.sample
  three = params['three'] || SoundBite::THREE.sample
  @rant = "#{one} #{two} #{three}"
  @rant.to_file 'en', "./public/audio/#{@rant}.mp3" unless File.file?(File.join('public', 'audio', @rant + '.mp3'))
  slim :home
end

get '/frothing' do
  @rant = SoundBite::generated_bite
  @rant.to_file 'en', "./public/audio/#{@rant}.mp3" unless File.file?(File.join('public', 'audio', @rant + '.mp3'))
  slim :home
end

