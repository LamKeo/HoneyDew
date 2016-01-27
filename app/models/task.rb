class Task < ActiveRecord::Base
  # creating an association between the user and tasks
  belongs_to :user
end
