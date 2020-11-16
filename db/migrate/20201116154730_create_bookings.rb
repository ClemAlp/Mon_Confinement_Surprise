class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :rating
      t.text :description
      t.string :review
      t.references :user, foreign_key: true
      t.references :confinement, foreign_key: true

      t.timestamps
    end
  end
end
