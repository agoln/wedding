class CreateWeddingInfo < ActiveRecord::Migration
  def change
    create_table(:wedding_info) do |t|
      t.datetime :start_time
      t.datetime :end_time

      t.text :invite_text
      t.string :header
      
      t.text :ceremony
      t.text :reception
      t.text :accomidation

      t.text :car_directions
      t.text :flight_directions
    end
  end
end
