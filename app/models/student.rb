class Student < ActiveRecord::Base
	has_many :subjects,:through => :subject_students

end
