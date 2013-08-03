class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.string :invite
      t.string :invite_meal
      t.string :guest
      t.string :guest_meal

      t.timestamps
    end
  end
end
