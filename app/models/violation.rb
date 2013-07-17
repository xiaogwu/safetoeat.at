class Violation < ActiveRecord::Base
  attr_accessible :business_id, :date, :description, :violation_severity, :violation_type_id
end
