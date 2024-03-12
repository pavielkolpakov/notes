require 'net/http'

class NotesClient < BaseClient
    def mock_from_json
        url = "app/assets/notes.json"
        data = JSON.parse(File.read(url))
        data["notes"].each do |note|
            Note.create(title: note["title"], content: note["content"])
        end
        
        data
    end
end