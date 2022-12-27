class CreateInformeAuxSaudes < ActiveRecord::Migration[5.2]
  def change
    create_table :informe_aux_saudes do |t|
      t.integer :ano
      t.string :doc_todos

      t.timestamps
    end
  end
end
