class CreateEarlyBirdSubmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :early_bird_submissions do |t|
      t.string :email

      t.timestamps
    end
  end
end
