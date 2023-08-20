require_relative 'Student_list_base'
require 'mysql2'
require_relative 'DB_singleton'
require 'json'

class Student_list_DB < Student_list_base
  private
  def list_hash_from_str(str: )
    return  JSON.parse(str, {:symbolize_names => true})
  end

  def list_hash_to_str(hash: )
    values = hash.map { |h|
      h.values.join ","
    }.map { |str|
      "(#{str})"
    }.join(",")
    return values
  end

  def read_file(rfile:)
    results = client.query("SELECT * FROM student", symbolize_keys: true).to_a
    puts results
    return JSON.pretty_generate(results)
  end

  def write_to_file(wfile:, data:)
    insert_query = "insert into student values #{data}"
    self.client.query insert_query
  end

  public
  attr_accessor :client
  def initialize
    self.client = Mysql2::Client.new(
      host: 'localhost',
      username: 'root',
      password: '12345',
      database: 'students'
    )
  end

end
