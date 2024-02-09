class Student < ApplicationRecord
  belongs_to :class_group

  validates :first_name, :last_name, :surname, presence: true

  SALT = 'MySalt'

  def generate_token
    self.token = Digest::SHA256.hexdigest("#{SALT}#{id}")
    update(token: token)
  end
end
