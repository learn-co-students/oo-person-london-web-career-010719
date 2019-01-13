class Person

  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene=(value)
    if (value > 10)
      @hygiene = 10
    elsif (value <= 0)
      @hygiene = 0
    else
      @hygiene = value
    end
  end

  def happiness=(value)
    if (value > 10)
      @happiness = 10
    elsif (value <= 0)
      @happiness = 0
    else
      @happiness = value
    end
  end

def happy?
  if @happiness > 7
    return true
  else
    return false
  end
end

def clean?
  if @hygiene > 7
    return true
  else
    return false
  end
end

def get_paid(salary)
  @bank_account += salary
  "all about the benjamins"
end

def take_bath
  self.hygiene += 4
  "♪ Rub-a-dub just relaxing in the tub ♫"
end


def work_out
  self.hygiene -= 3
  self.happiness += 2
  "♪ another one bites the dust ♫"
end

def call_friend(callee)
  self.happiness += 3
  callee.happiness += 3
  "Hi #{callee.name}! It's #{self.name}. How are you?"
end

def start_conversation(callee, conversation)
  if conversation == "politics"
    self.happiness -= 2
    callee.happiness -= 2
    "blah blah partisan blah lobbyist"
  elsif conversation == "weather"
    self.happiness += 1
    callee.happiness += 1
    "blah blah sun blah rain"
  else
    "blah blah blah blah blah"
  end
end

#class end
end
