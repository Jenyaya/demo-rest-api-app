require 'sinatra'
require 'json'
require './lib/stack'
require './lib/queue'


set :port, 9494
set :bind, '0.0.0.0'

before do
  content_type :json

  if request.body.size > 0
    request.body.rewind
    @request_payload = JSON.parse request.body.read
  end
end

set :stack, Stack.new
set :queue, Stack.new

get '/' do
  'Nothing to show'.to_json
end

get '/stack' do
  settings.stack.stack.to_json
end

post '/stack' do
  settings.stack.push @request_payload
  redirect '/stack'
end

delete '/stack' do
  settings.stack.pop
  redirect '/stack'
end

get '/queue' do
  settings.queue.queue.to_json
end

post '/queue' do
  settings.queue.push @request_payload
  redirect '/queue'
end

delete '/queue' do
  settings.queue.pop
  redirect '/queue'
end

