class FetchNotesJob < ApplicationJob
  queue_as :default

  def perform
    NotesClient.new.mock_from_json
  end
end
