class WelcomeController < ApplicationController

	
	def index
	end


	def result
		email=params[:email]

		vote=Vote.all.where("email='#{email}' and flag=''")
		if vote==nil
			@result='您的Email已領過票，或Email錯誤或未登錄'
		else

			if email.length()>5
				temp=email[0..4].to_s()
			else
				temp=email.to_s()
			end
			
			serial=''
			temp.each_byte(){|a|
				serial+=(a.to_i()*860220).to_s()
			}

			i=0
			@result=''
			serial.each_char(){|c|
				@result+=c
				if(i%2==1 && i+1!=serial.length)
					@result+='-'
				end
				i+=1
			}

			@result='您的投票序號為：'+@result
		end
	end


	def check
	end
end
