class CreatePums < ActiveRecord::Migration[5.2]
  def change
    create_table :pums do |t|
      t.string :state_puma
      t.string :borough
      t.string :agegroupsd
      t.string :agegroups
      t.string :age65plus
      t.string :age18
      t.string :mutu
      t.string :mutud
      t.string :educd_recode
      t.string :educd_college
      t.string :engability
      t.string :lanx
      t.string :nativity
      t.string :povertylevel
      t.string :disabilityagegroups
      t.string :classwkr_dcp
      t.integer :id_dcp

      t.timestamps
    end
  end
end
