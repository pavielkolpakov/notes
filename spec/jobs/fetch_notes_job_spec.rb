require 'rails_helper'

RSpec.describe FetchNotesJob, type: :job do
  it "enqueues the job as expected" do
    expect {
      FetchNotesJob.perform_later
    }.to have_enqueued_job(FetchNotesJob)
  end

  it "checkes if notes were created" do
    note = create(:note)
    FetchNotesJob.perform_now
    note2 = create(:note)

    expect(note.id).to eq(note2.id - 11)
  end
end
