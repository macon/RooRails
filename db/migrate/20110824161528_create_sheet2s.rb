class CreateSheet2s < ActiveRecord::Migration
  def self.up
    create_table :sheet2s do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :sheet2s
  end
end
