require_relative "primary_table"
require "test/unit"
 
class TestPrimaryTable < Test::Unit::TestCase
 
  def test_is_prime
    pt = PrimaryTable.new(1)
    assert_equal(true, pt.is_prime(1))
    assert_equal(true, pt.is_prime(2))
    assert_equal(true, pt.is_prime(3))
    assert_equal(false, pt.is_prime(4))
    assert_equal(false, pt.is_prime(6))
    assert_equal(true, pt.is_prime(11))
    assert_equal(true, pt.is_prime(13))
    assert_equal(false, pt.is_prime(15))
    assert_equal(true, pt.is_prime(17))
    assert_equal(false, pt.is_prime(21))
    assert_equal(true, pt.is_prime(23))
    assert_equal(false, pt.is_prime(27))
    assert_equal(false, pt.is_prime(36))
  end

  def test_get_primes_for
    pt = PrimaryTable.new(1)
    assert_equal([1], pt.get_primes_for(1))
  end
 
end