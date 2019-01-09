require 'pry'

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def validate(score)
    if score >=0 && score<= 10
      score
    elsif score < 0
      0
    elsif score > 10
      10
    end
  end

  def happiness=(new_happiness)
    @happiness = self.validate(new_happiness)
  end

  def hygiene=(new_hygiene)
    @hygiene = self.validate(new_hygiene)
  end

  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(@hygiene+4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene=(@hygiene-3)
    self.happiness=(@happiness+2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness=(@happiness+3)
    friend.happiness=(friend.happiness+3)
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(starter, topic)
    if topic == "politics"
      starter.happiness=(starter.happiness-2)
      self.happiness=(@happiness-2)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      starter.happiness=(starter.happiness+1)
      self.happiness=(@happiness+1)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
