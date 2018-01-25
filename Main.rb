# encoding: UTF-8


#匯入模組
require 'sinatra/base'
require 'sinatra/activerecord'
require './config/environments'
require './models/model'


class Main < Sinatra::Base
	#處理行事曆
	get '/calendar' do
		erb :Main
	end

	#處理投票
	get '/vote' do
		erb :Vote
	end

	#run sinatra server when this site is unstart
	run! if app_file == $0
end