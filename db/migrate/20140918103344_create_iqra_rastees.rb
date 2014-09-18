class CreateIqraRastees < ActiveRecord::Migration
  def change
    create_table :iqra_rastees do |t|

      t.timestamps
    end
  end
end
