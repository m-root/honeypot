class Task < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :title
end
