require 'pry'

class Patient
	attr_accessor :name

	@@all = []

  	def initialize(name)
  		@@all << self
  		@name = name
  	end

    def self.all
      @@all
    end

    def new_appointment(doctor, date)
		    Appointment.new(self, doctor, date)
    end

    def appointments
	     Appointment.all.select do |appointment|
		    appointment.patient == self
	    end
    end

    def doctors
  	   appointments.map do |appointed|
  		  appointed.doctor
  	end
  end
  
end
