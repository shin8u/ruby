require 'json'
require_relative 'Student_list_base'

class Student_list_JSON < Student_list_base

  public_class_method :new

  def list_hash_from_str(str)
    JSON.parse(str,  {symbolize_names: true })
  end

  #получение строки заданного вида из массива хэшей
  def list_hash_to_str(list_hash)
    JSON.generate(list_hash)
  end
end
