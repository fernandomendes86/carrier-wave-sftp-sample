class CreateValorMensalCreditados < ActiveRecord::Migration[5.2]
  def change
    create_table :valor_mensal_creditados do |t|
      t.references :informe_aux_saude, foreign_key: true
      t.integer :mes
      t.decimal :valor
      t.string :documentos

      t.timestamps
    end
  end
end
