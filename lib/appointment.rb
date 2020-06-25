class Appointment
    attr_accessor :date, :doctor, :patient

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.get_appointments_by_doctor(doctor)
        Appointment.all.select do |appointment|
            appointment.doctor == doctor
        end
    end

    def self.get_appointments_by_patient(patient)
        Appointment.all.select do |appointment|
            appointment.patient == patient
        end
    end

    def self.get_doctors_by_patient(patient)
        doctors = []
        Appointment.all.each.select do |appointment|
            if (appointment.patient === patient)
                doctors << appointment.doctor
            end
        end
        doctors.uniq
    end

    def self.get_patients_by_doctor(doctor)
        patients = []
        Appointment.all.each.select do |appointment|
            if (appointment.doctor === doctor)
                patients << appointment.patient
            end
        end
        patients.uniq
    end

    def self.all
        @@all
    end
end