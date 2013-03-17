Factory.define :archive_post do |ap|
  extend ActionDispatch::TestProcess
  ap.name                    "Test post"
  ap.preview_content         "Some preview content"
  ap.detail_content          "Some detail content"
  ap.image		     	 	 fixture_file_upload('spec/fixtures/rails.jpg', 'image/jpg')
end
