class InformeAuxSaude < ApplicationRecord
  has_many :valor_mensal_creditados
  accepts_nested_attributes_for :valor_mensal_creditados, allow_destroy: true

  serialize :doc_todos, JSON
  mount_uploaders :doc_todos, InformeAuxSaudeDocUploader
end
