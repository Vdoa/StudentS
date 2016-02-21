class Subject < ActiveRecord::Base
	belongs_to :professor, foreign_key: "professor_id"
end
