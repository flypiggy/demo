class User
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    @name
  end

  def age
    @age
  end

  def adult?
    @age > 18 ? true : false
  end
end
