json.extract! upload, :id, :image, :created_at, :updated_at
json.image_url upload.image.url
json.upload_id upload.id