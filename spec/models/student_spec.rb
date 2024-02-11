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
require 'rails_helper'

RSpec.describe Student, type: :model do
  subject(:student) { create(:student) }

  describe 'DB validations' do
    it { is_expected.to have_db_column(:id).of_type(:integer).with_options(primary: true, null: false) }
    it { is_expected.to have_db_column(:first_name).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:last_name).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:surname).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:class_group_id).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:token).of_type(:string).with_options(null: true) }

    it 'does not have unvalidated columns' do
      expect(described_class.column_names.count).to eq(8)
    end
  end

  describe 'ActiveRecord associations' do
    it { is_expected.to belong_to(:class_group) }
  end
end
