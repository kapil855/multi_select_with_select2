class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :course, array: true, using: "(string_to_array(course, ','))"  

      t.timestamps
    end
  end
end
