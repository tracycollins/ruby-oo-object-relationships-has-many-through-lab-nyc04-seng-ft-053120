class Patient

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def appointments
        Appointment.get_appointments_by_patient(self)
    end

    def doctors
        Appointment.get_doctors_by_patient(self)
    end

    def new_appointment(doctor, date)
        appointment = Appointment.new(date, self, doctor)
    end

    def self.all
        @@all
    end
end