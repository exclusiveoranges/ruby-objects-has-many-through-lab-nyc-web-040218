class Patient

  attr_accessor

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointment<<appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.map do |appointment_instance|
    appointment_instance.doctor
    end
  end
end
