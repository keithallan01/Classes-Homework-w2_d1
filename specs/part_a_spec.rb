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

  def test_set_cohort
    student = Student.new("Gabriele", "E27")
    student.set_cohort("E27")
    assert_equal("E27", student.cohort)
  end
end
