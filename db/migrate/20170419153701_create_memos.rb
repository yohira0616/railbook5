class CreateMemos < ActiveRecord::Migration[5.0]
  def change
    create_table :memos do |t|
      t.references :memoable, polymorphic: true
      t.string :body

      t.timestamps
    end
  end
end
