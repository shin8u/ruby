require 'minitest/autorun'
require_relative 'student.rb'
require 'json'

class StudentTest < Minitest::Test
  def setup
    @student = Student.new(
      first_name: 'Иванов',
      last_name: 'Иван',
      middle_name: 'Иванович',
      id: 10,
      phone_number: '+79995554433',
      telegram: '@ivanushka',
      mail: 'ivan@gmail.com',
      git: '@sbeugg505'
    )
  end

  def test_student_init_all_params_correct
    assert @student.last_name == 'Иванов'
    assert @student.first_name == 'Иван'
    assert @student.middle_name == 'Иванович'
    assert @student.id == 10
    assert @student.phone_number == '79995554433'
    assert @student.telegram == '@ivanushka'
    assert @student.mail == '@ivan@gmail.com'
    assert @student.Git == '@sbeugg505'
  end

  def test_student_empty_options
    Student.new(first_name:'Иванов', last_name:'Иван', middle_name:'Иванович')
  end

  def test_student_contact
    short_contact = @student.contact
    assert short_contact[:type] == :tg
    assert short_contact[:value] == '@ivanushka'
  end


  def test_student_has_git
    assert @student.is_git? == true
  end

  def test_student_valid
    assert @student.valid? == true
  end

  def test_student_set_contacts
    stud = Student.new(first_name:'Иванов', last_name:'Иван', middle_name:'Иванович')
    stud.set_contacts(phone_number: '+79998887766', telegram: '@ivanchik', mail: 'ivan@gmail.com')

    assert stud.phone_number == '+79998887766'
    assert stud.telegram == '@ivanchik'
    assert stud.mail == 'ivan@gmail.com'
  end

  def test_student_short_name
    assert @student.short_name == 'Иванов И. И.'
  end

end
