# your code goes here
class Person

attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene

def initialize(name, bank_account=25)
  @name = name
  @bank_account=bank_account
  @happiness = 8
  @hygiene = 8
end

def happiness
   [[10, @happiness].min, 0].max
end


def hygiene
  [[10, @hygiene].min, 0].max
end

def happy?
  @happiness > 7
end

def clean?
  @hygiene > 7
end

def get_paid(salary)
@bank_account = @bank_account+salary
return 'all about the benjamins'
end

def take_bath
 self.hygiene += 4
return "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  self.hygiene -= 3
  self.happiness += 2
  return "♪ another one bites the dust ♫"
end

def call_friend(friend)
self.happiness += 3
friend.happiness+= 3
return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(person, topic)
  case topic
  when "politics"
    self.happiness -= 2
    person.happiness -= 2
    "blah blah partisan blah lobbyist"
  when "weather"
    self.happiness += 1
    person.happiness += 1
    "blah blah sun blah rain"
  when "programming"
    self.happiness += 10
    person.happiness += 10
    "blah blah blah blah blah"
else
  "don't care lol"
  end


end


end
