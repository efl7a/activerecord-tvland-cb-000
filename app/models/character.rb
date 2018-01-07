class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    actor = Actor.find_or_create_by(self.actor.id)
    "#{actor.full_name} always says: #{self.catchphrase}"
  end
end
