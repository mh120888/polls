class Poll < ActiveRecord::Base
  has_many :options
  has_many :responses
  accepts_nested_attributes_for :options, :reject_if => :all_blank, :allow_destroy => true
end
