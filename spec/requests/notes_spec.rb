require 'rails_helper'

RSpec.describe "NotesController", type: :request do
  describe "GET /notes" do
    it "works!" do
      get notes_path
      expect(response).to have_http_status(200)
    end

    it "returns correct notes" do
      params = {
        "note" => 
          {
            "title" => "Rspec test title",
            "content" => "Rspect request test content"
          }
      }
      post notes_path, params: params
      get notes_path
      expect(JSON.parse(response.body)[0]["note"]["content"]).to eq(params["note"]["content"])
    end
  end
end
