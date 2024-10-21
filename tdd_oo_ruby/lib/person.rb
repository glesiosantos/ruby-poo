class Person
  def talk (world = '')
    return 'Hello World, Ruby!' if world.empty?
    "#{world}, Ruby!"
  end
  
end
