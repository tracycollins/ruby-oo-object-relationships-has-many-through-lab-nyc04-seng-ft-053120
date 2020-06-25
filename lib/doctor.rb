class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.get_appointments_by_doctor(self)
    end

    def patients
        Appointment.get_patients_by_doctor(self)
    end

    def new_appointment(patient, date)
        appointment = Appointment.new(date, patient, self)
    end

    def self.all
        @@all
    end
end