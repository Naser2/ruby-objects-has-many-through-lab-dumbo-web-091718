require 'pry'

class Appointment
	attr_accessor :date, :patient, :doctor

	@@all = []

	def initialize(patient, doctor, date)
		 @@all << self
     @date = date
		 @patient = patient
		 @doctor = doctor
	end

  def self.all
    @@all
  end

end
