class CreateTrixUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :trix_uploads do |t|
    	t.attachment :image

      	t.timestamps
    end
  end
end
