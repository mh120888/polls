class Option < ActiveRecord::Base
  belongs_to :poll

  def to_s
    self.answer
  end
end