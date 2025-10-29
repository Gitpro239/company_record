class CreateRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :records do |t|

      
      t.string :company_name
      t.string :email_id
      t.string :company_code
      t.integer :strength
      t.string :website
      
      t.timestamps
    end
  end
end
