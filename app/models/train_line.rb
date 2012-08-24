class TrainLine < ActiveRecord::Base
  attr_accessible :frequency, :name
	validates_presence_of :name
end
