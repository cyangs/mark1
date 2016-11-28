class Ship < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.string :name
      t.string :nationality
      t.string :ship_class
      t.string :status, default: :active
      t.timestamps
    end

    create_table :armaments do |t|
      t.belongs_to :ship, index: true

      t.integer :ship_id
      t.integer :turrets
      t.integer :caliber
      t.integer :guns
    end

    create_table :armors do |t|
      t.belongs_to :ship, index: true
      t.integer :ship_id
      t.integer :belt
      t.integer :deck
    end

    create_table :propulsions do |t|
      t.belongs_to :ship, index: true

      t.integer :ship_id
      t.string :type
      t.integer :max_speed
    end

  end



end
