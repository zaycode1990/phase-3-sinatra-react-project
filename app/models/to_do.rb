class ToDo < ActiveRecord::Base
    belongs_to :user

    def self.all_tasks
        self.all.order(:task)
      end
end