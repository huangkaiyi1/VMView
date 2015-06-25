class CreateVirtualMachines < ActiveRecord::Migration
  def change
    create_table :virtual_machines do |t|
      t.string :hostname
      t.integer :number_cpu
      t.integer :ram_mb
      t.integer :environment_id

      t.timestamps null: false
    end
  end
end
