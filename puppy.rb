# Not done yet... 

class PuppyGotchi
  def initialize(name)
    @name = name 
    @puppy_belly = 10
    @puppy_bladder = 0
    @puppy_bowels = 0
    @puppy_awake = true
  end 

  def feed_puppy
    if @puppy_belly == 10
      full_puppy
    else 
      @puppy_belly = @puppy_belly + 1
      puts "You feed #{name}."
    end 
  end

  def water_puppy
    if @puppy_bladder == 10
      passing_time
    else 
      @puppy_bladder = @puppy_bladder + 1
      puts "You can #{name} some water."
    end 
  end 

  def puppy_bathroom_tinkle
    # Take puppy outside and empty bladder
  end 

  def puppy_bathroom_poopy
    # Take puppy outside and empty bowels 
  end 

  def puppy_sleeps
    puts "#{name} is sleeping."
    @puppy_awake = false 

    3.times do 
      if @puppy_awake = false
        passing_time
      end 

      if @puppy_awake
        passing_time
      end
    end 

  end 

  private
  def full_puppy
    puts "#{name} is full and doesn't want any food."
    puppy_sleeps
  end 

  def puppy_hungry?
    @puppy_belly <= 1
  end 

  def puppy_tinkle?
    @puppy_bladder >= 8
  end

  def puppy_poopy?
    @puppy_bowels >= 8
  end

  def dead_puppy
    # Puppy has no food and belly and is dead 
  end

  def passing_time
    if @puppy_belly >= 2
      @puppy_belly = @puppy_belly - 1
      @puppy_bowels = @puppy_bowels + 1
      @puppy_bladder = @puppy_bladder + 1
    elsif @puppy_belly == 1
      @puppy_awake = true 
    else 
      # Puppy is starving
      # Puppy doesn't wake up, it's dead
    end 

    if @puppy_bowels == 10 || @puppy_bladder == 10
      # Puppy has accident 
    end

    if puppy_hungry?
      # Puppy wakes up and demands to be fed
    end 

    if puppy_poopy? || puppy_tinkle?
      # Puppy wakes up and demands to go potty
    end 

  end 

end
