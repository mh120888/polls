class Response < ActiveRecord::Base
  belongs_to :poll

  serialize :answer
  before_save :remove_empty_string

  def remove_empty_string
    if answer.class == Array
      answer.reject!(&:empty?)
    end
  end
end