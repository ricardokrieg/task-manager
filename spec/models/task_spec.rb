require 'rails_helper'

RSpec.describe Task do
  subject(:task) { create(:task) }

  describe 'validations' do
    specify do
      expect(task).to validate_presence_of(:title)
    end
  end
end
