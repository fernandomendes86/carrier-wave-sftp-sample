class ValorMensalCreditado < ApplicationRecord
  belongs_to :informe_aux_saude

  serialize :documentos, JSON
  mount_uploaders :documentos, InformeAuxSaudeMensalDocUploader
end
