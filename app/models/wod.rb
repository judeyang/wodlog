# == Schema Information
#
# Table name: wods
#
#  id               :integer          not null, primary key
#  wodname          :string
#  description      :text
#  introduction     :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  wodtype          :string
#  box              :string
#  is_hidden        :boolean          default("f")
#  is_task_priority :boolean          default("f")
#  is_time_priority :boolean          default("f")
#

class Wod < ApplicationRecord
  validates :wodname, :description, presence: true

    def publish!
      self.is_hidden = false
      self.save
    end

    def hide!
      self.is_hidden = true
      self.save
    end


end
