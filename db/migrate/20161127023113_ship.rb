class Ship < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.text :name
      t.text :nationality
      t.text :class

      t.timestamps
    end

    create_table :armament do |t|
      t.belongs_to :ship, index: true

      t.integer :ship_id
      t.integer :turrets
      t.integer :caliber
      t.integer :guns
    end

    create_table :armor do |t|
      t.belongs_to :ship, index: true
      t.integer :ship_id
      t.integer :belt
      t.integer :deck
    end

    create_table :propulsion do |t|
      t.belongs_to :ship, index: true

      t.integer :ship_id
      t.text :type
      t.integer :max_speed
    end

  end



end
