class AddSidesToPages < ActiveRecord::Migration
  def change
    add_column :pages, :side, :string
    add_column :pages, :other_side, :string
  end
end
