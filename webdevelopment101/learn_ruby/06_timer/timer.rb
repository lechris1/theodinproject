class Timer
  #write your code here
	attr_accessor :seconds, :minutes, :hours, :time_string

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	def time_string
		@minutes = @seconds/60
		@seconds %= 60 #leftover from minutes
		@hours = @minutes/60
		@minutes %= 60 #leftover from hours

		sprintf("%02d:%02d:%02d", @hours, @minutes, @seconds)
	end
end
