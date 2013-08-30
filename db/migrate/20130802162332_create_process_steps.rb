# -*- encoding : utf-8 -*-
class CreateProcessSteps < ActiveRecord::Migration
  def change
    create_table :process_steps do |t|
      t.text :description
      t.string :name
      t.datetime :open_date
      t.datetime :consolidated_at
      t.integer :order_number
      t.boolean :consolidated

      t.references :selection_process

      t.timestamps
    end
  end
end
