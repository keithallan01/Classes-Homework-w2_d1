require('minitest/autorun')
require('minitest/rg')
require_relative('../part_a')

class TestStudent < Minitest::Test

def test_student_name
  student = Student.new("Gabriele", "E27")
  assert_equal("Gabriele", student.name)
end

  def test_cohort
    student = Student.new("Gabriele", "E27")
    assert_equal("E27", student.cohort)
  end

  def test_set_name
    student = Student.new("Gabriele", "E27")
    student.set_name("Keith")
    assert_equal("Keith", student.name)
  end

  def test_can_set_cohort
    student = Student.new("Gabriele", "E27")
    student.set_cohort("E27")
    assert_equal("E27", student.cohort)
  end

  def test_student_can_talk
    student = Student.new("Keith", "E27")
    student_said = student.talk()
    assert_equal("I can talk", student_said)
  end

  def test_students_favourite_language
    student = Student.new("Keith", "E27")
    # student_said = student.favourite_language('Ruby')
    favourite_language = "Ruby"
    assert_equal(student.favourite_language("Ruby"), "I love Ruby!")
  end
end
