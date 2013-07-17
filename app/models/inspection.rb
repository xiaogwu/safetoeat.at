class Inspection < ActiveRecord::Base
  attr_accessible :business_id, :date, :score, :type
end
