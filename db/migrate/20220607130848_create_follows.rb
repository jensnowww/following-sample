class CreateFollows < ActiveRecord::Migration[6.1]
  def change
    create_table :follows do |t|
      t.references :followable, polymorphic: true, null: false
      t.references :user
      t.timestamps
    end
  end
end
