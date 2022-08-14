class Student < ApplicationRecord

  mount_uploader :doc, StudentUploader

  def self.update_doc(student_id)
    student = where(id: student_id)
    identifier = student.first.doc.identifier 
    return if File.dirname(identifier) == "."
    
    student.update_all(doc: File.basename(identifier)) 
  end
end
