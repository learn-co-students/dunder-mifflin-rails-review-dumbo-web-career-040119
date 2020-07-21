class Dog < ApplicationRecord
  has_many :employees

  def count
    self.employees.length
  end
end
