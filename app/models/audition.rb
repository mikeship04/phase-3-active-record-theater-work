class Audition < ActiveRecord::Base
  belongs_to :role

  def call_back
    self.update ({hired: true})
  end

  def you_are_fired
    self.update ({hired: false})
  end
end