class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :user
      t.belongs_to :question

      t.string :body

      t.timestamps
    end
  end
end
