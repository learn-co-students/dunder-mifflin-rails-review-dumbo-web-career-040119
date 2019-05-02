class Employee < ApplicationRecord
    belongs_to :dog

    validates_presence_of :first_name, :last_name, :alias, :title, :office
    validates_uniqueness_of :first_name, :last_name, :alias, :title, :office

end
