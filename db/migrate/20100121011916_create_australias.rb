class CreateAustralias < ActiveRecord::Migration
  def self.up
    create_table :australias do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :australias
  end
end
