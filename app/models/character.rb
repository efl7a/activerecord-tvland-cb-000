class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{self.actor.full_name} always says: #{self.catchphrase}"
  end
end
