# == Schema Information
#
# Table name: students
#
#  id             :bigint           not null, primary key
#  first_name     :string           not null
#  last_name      :string           not null
#  surname        :string           not null
#  class_group_id :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  token          :string
#
class Student < ApplicationRecord
  belongs_to :class_group

  validates :first_name, :last_name, :surname, presence: true

  SALT = 'MySalt'

  def generate_token
    self.token = Digest::SHA256.hexdigest("#{SALT}#{id}")
    update(token: token)
  end
end
