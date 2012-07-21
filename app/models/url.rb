class Url < ActiveRecord::Base
  attr_accessible :appendage, :original

  def increment_counter!
    self.increment(:counter).save
  end
end
