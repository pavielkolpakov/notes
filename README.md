Using Ruby 3.2.0 and Rails 7

For setting up do

bundle install
rails db:create
rails db:migrate
rails s


Endpoints:
GET /notes - Displaying all notes
POST /notes body: {"note": {"title": ..., "content": ...}} - Creating new note
POST /search_note body: {"content": ... OR "title": ...} - Searching for notes by content or title
PUT /notes/:id body: {"title": ..., "description": ...} - Updating note by id
DEL /notes/:id - Deleting note by id
GET /fetch_data mock data from static json


For a scheduled background job sidekiq needs to be running
Using sidekiq-cron gem fetching data job will be running every 2 minutes