class Skill < ApplicationRecord
  validates_presence_of :skills, :percent_utilized
end
