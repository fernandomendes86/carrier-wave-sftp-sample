class InformesController < ApplicationController
  def new
    @informe = InformeAuxSaude.new
    @informe.valor_mensal_creditados.build(
      [ { mes: 1 }, { mes: 2 } ]
    )
  end

  def show
  end

  def salvar_form
    informe = InformeAuxSaude.new(informe_params)
    informe.save
  end

  private

  def informe_params
    params.require(:informe_aux_saude).permit(:ano, doc_todos: [], 
      valor_mensal_creditados_attributes: [:valor, :mes, documentos: [] ])
  end
end
