module Teacher
  def initialize(age, specialization, name: 'Unknown', parent_permission: true)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_service?
    true
  end
end
