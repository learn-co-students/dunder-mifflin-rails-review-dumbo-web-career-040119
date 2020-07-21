class Employee < ApplicationRecord
  belongs_to :dog

  validates_uniqueness_of :alias, :title

  def to_s
    "#{self.first_name}" + " " + "#{self.last_name}"
  end
end
