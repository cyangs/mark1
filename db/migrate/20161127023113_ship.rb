class Ship < ActiveRecord::Migration[5.0]
  def change
    create_table :ships do |t|
      t.string :name, null: false
      t.string :nationality, null: false
      t.string :ship_class, null: false
      t.string :status, default: :active
      t.timestamps
    end

    create_table :armaments do |t|
      t.belongs_to :ship, index: true
      t.integer :ship_id, null: false
      t.integer :turrets, null: false
      t.integer :caliber, null: false
      t.integer :guns, null: false
      t.integer :muzzle_velocity, null: false
      t.integer :penetration, null: false
    end
    
    create_table :armors do |t|
      t.belongs_to :ship, index: true
      t.integer :ship_id, null: false
      t.integer :belt, null: false
      t.integer :deck, null: false
    end

    create_table :propulsions do |t|
      t.belongs_to :ship, index: true
      t.integer :ship_id, null: false
      t.string :type, null: false
      t.integer :max_speed, null: false
    end
  end
end
