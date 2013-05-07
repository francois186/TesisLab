class Event < ActiveRecord::Base
  attr_accessible :id, :end, :start, :title, :url
end
