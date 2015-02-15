class AddGrupoToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :grupo, index: true
  end
end
