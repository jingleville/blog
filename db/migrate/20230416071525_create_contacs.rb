class CreateContacs < ActiveRecord::Migration[7.0]
  def change
    create_table :contacs do |t|
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
