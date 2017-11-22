class CreateTrixOnRailsUploads < ActiveRecord::Migration[5.1]
  def change
    create_table :trix_on_rails_uploads do |t|
    	t.attachment :image

      	t.timestamps
    end
  end
end
