class PuppyGotchi
  def initialize(name)
    @name = name 
    @puppy_belly = 10
    @puppy_bladder = 0
    @puppy_bowels = 0
    @puppy_is_sleeping = true
    puts "Congrats! You are now the proud owner of a pissing machine, lil #{@name}."
  end 

  def feed_puppy
    if @puppy_belly == 10
      full_puppy
    else 
      @puppy_belly = @puppy_belly + 1
      puts "You feed #{@name}."
    end 
  end

  def water_puppy
    if @puppy_bladder == 10
      passing_time
    else 
      @puppy_bladder = @puppy_bladder + 1
      puts "You gave #{@name} some water."
    end 
  end 

  def puppy_bathroom_tinkle
    if @puppy_bladder <= 7 
      @puppy_bladder = 0
      puts "#{@name} went tinkle. Hooray for parenting!"
    else 
      puts "#{@name} doesn't need to pee. Isn't potty training so joyous?"
    end 
  end 

  def puppy_bathroom_poopy
    if @puppy_bowels <= 9
      @puppy_bowels = 0
      puts "#{@name} has pooped. OUTSIDE. Celebrate your victory."
    else 
      puts "#{@name} doesn't need to poop. Better keep an eye on that wiggly butt."
    end 
  end 

  def puppy_sleeps
    puts "#{@name} is sleeping."
    @puppy_is_sleeping = true 

    3.times do 
      passing_time
    end 
  end 

  private
  def full_puppy
    puts "#{@name} is full and doesn't want any food."
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
    puts "You are a horrible pet owner. You have starved #{@name} to death. No more poopers for you!"
  end

  def passing_time
    if @puppy_belly >= 2
      @puppy_belly = @puppy_belly - 1
      @puppy_bowels = @puppy_bowels + 1
      @puppy_bladder = @puppy_bladder + 1
    elsif @puppy_belly == 1
      @puppy_is_sleeping = false 
    else 
      dead_puppy
    end 

    if @puppy_bowels == 10
      @puppy_bowels = 0
      puts "#{@name} just took a huge deuce in your favorite suede shoes. That's what you get for leaving them out!"
    end

    if @puppy_bladder == 10
      @puppy_bladder = 0
      puts "#{@name} just went pee all over your $5,000 carpet. This is the definition of love. Go clean it up and learn from your mistakes."
    end

    if puppy_hungry?
      @puppy_is_sleeping = false
      puts "#{@name} wakes up and demands to be fed."
    end 

    if puppy_poopy?
      @puppy_is_sleeping = false
      puts "#{@name} wakes up and urgently needs to poo."
    end

    if puppy_tinkle?
      @puppy_is_sleeping = false
      puts "#{@name} is awake! They need to pee. Really badly. You better get on that."
    end 
  end 

end

poopers = PuppyGotchi.new("Kiwi")
poopers.feed_puppy
poopers.puppy_bathroom_tinkle