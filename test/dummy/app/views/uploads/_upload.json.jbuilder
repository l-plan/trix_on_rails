json.extract! upload, :id, :image, :created_at, :updated_at
# json.url upload_url(upload, format: :json)
# json.image_url Rails.root.join('public/uploads/13/south-park-still-h-2016_2z12.jpg')#upload.image #{}"/uploads/13.json"#.image#.url)#{}"/uploads/13"#url_for(upload.image)
json.image_url upload.image.url
json.upload_id upload.id