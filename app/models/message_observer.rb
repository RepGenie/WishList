class MessageObserver < ActiveRecord::Observer
	def after_create(message)
		puts "I'll figure out how to send an email to #{message.recipient_email} later."
	end
end
