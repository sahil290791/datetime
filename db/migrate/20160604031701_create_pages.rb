class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :desc
      t.date :start_date

      t.timestamps null: false
    end
  end
end
