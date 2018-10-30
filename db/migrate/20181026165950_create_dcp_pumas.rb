class CreateDcpPumas < ActiveRecord::Migration[5.2]
  def change
    create_table :dcp_pumas, id: false do |t|
      t.string :year
      t.primary_key :code
      t.string :name
      t.references :boro

      t.timestamps
    end
  end
end
