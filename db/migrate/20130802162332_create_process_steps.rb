# -*- encoding : utf-8 -*-
class CreateProcessSteps < ActiveRecord::Migration
  def change
    create_table :process_steps do |t|
      t.text :description
      t.string :name
      t.datetime :open_date
      t.datetime :consolidated_at
      t.boolean :consolidated
      t.integer :order_number

      t.references :selection_process

      t.timestamps
    end
  end
end
