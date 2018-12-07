require 'sinatra'
require_relative './worker'

get '/enqueue' do
  MyWorker.perform_async

  'enqueued.'
end
