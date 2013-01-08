class User
  def initialize(name, age)
    @name = name
    @age = age
  end

  def adult?
    @age > 18 ? true : false
  end
end

def test_adult
  ligan = User.new('ligan', 18)
  xiaoming = User.new('xiaoming', 19)

  puts 'wrong!' if ligan.adult?
  puts 'wrong!' unless xiaoming.adult?
end
