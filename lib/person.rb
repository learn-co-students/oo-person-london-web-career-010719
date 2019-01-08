require 'pry'

class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene # <- getter / / setter is written below

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
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
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    @hygiene = 0 if @hygiene < 0
    @hygiene = 10 if @hygiene > 10
  end

  def happiness=(happiness)
    @happiness = happiness
    @happiness = 0 if @happiness < 0
    @happiness = 10 if @happiness > 10
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    self.happiness
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      self.happiness += 0
      person.happiness += 0
      "blah blah blah blah blah"
    end
  end
  # binding.pry
end
