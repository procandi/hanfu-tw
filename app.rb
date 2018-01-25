# encoding: UTF-8


#匯入模組
require 'sinatra'
#require 'sinatra/base'
require 'sinatra/activerecord'
require './models/model'
require './config/environments'




class Vote < ActiveRecord::Base
end


class App < Sinatra::Base
	#處理行事曆
	get '/calendar' do
		erb :Calendar
	end

	#處理投票
	get '/vote' do
		@votes = Vote.all #find(params[:id])
		@vote=@votes.first

		erb :Vote
	end

	#run sinatra server when this site is unstart
	run! if app_file == $0
end