class FixColumnName < ActiveRecord::Migration
  def change
    change_table :books do |t|
      t.rename :puDate, :pubDate
    end
  end
end
 
