require 'rails_helper'

RSpec.describe Note, type: :model do
  it "creates two notes" do
    note1 = FactoryBot.create(:note)
    note2 = FactoryBot.create(:note)
    expect(note1.title).to eq(note2.title)
  end
end
