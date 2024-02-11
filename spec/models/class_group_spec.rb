# == Schema Information
#
# Table name: class_groups
#
#  id             :bigint           not null, primary key
#  number         :integer          not null
#  letter         :string           not null
#  students_count :integer          not null
#  school_id      :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe ClassGroup, type: :model do
  subject(:class_group) { create(:class_group) }

  describe 'DB validations' do
    it { is_expected.to have_db_column(:id).of_type(:integer).with_options(primary: true, null: false) }
    it { is_expected.to have_db_column(:number).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:letter).of_type(:string).with_options(null: false) }
    it { is_expected.to have_db_column(:students_count).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:school_id).of_type(:integer).with_options(null: false) }
    it { is_expected.to have_db_column(:created_at).of_type(:datetime).with_options(null: false) }
    it { is_expected.to have_db_column(:updated_at).of_type(:datetime).with_options(null: false) }

    it 'does not have unvalidated columns' do
      expect(described_class.column_names.count).to eq(7)
    end
  end

  describe 'ActiveRecord associations' do
    it { is_expected.to belong_to(:school) }
    it { is_expected.to have_many(:students).dependent(:destroy) }
  end
end
