#!/usr/bin/env ruby
gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'hamming'

# Test data version:
# 11a7e6f Merge pull request #92 from kotp/116_Verbal_Word_Problem

class HammingTest < Minitest::Test
  def test_identical_strands
    assert_equal 0, Hamming.get_hamming_difference_between('A', 'A')
  end

  def test_long_identical_strands
    assert_equal 0, Hamming.get_hamming_difference_between('GGACTGA', 'GGACTGA')
  end

  def test_complete_distance_in_single_nucleotide_strands
    assert_equal 1, Hamming.get_hamming_difference_between('A', 'G')
  end

  def test_complete_distance_in_small_strands
    assert_equal 2, Hamming.get_hamming_difference_between('AG', 'CT')
  end

  def test_small_distance_in_small_strands
    assert_equal 1, Hamming.get_hamming_difference_between('AT', 'CT')
  end

  def test_small_distance
    assert_equal 1, Hamming.get_hamming_difference_between('GGACG', 'GGTCG')
  end

  def test_small_distance_in_long_strands
    assert_equal 2, Hamming.get_hamming_difference_between('ACCAGGG', 'ACTATGG')
  end

  def test_non_unique_character_in_first_strand
    assert_equal 1, Hamming.get_hamming_difference_between('AGA', 'AGG')
  end

  def test_non_unique_character_in_second_strand
    assert_equal 1, Hamming.get_hamming_difference_between('AGG', 'AGA')
  end

  def test_large_distance
    assert_equal 4, Hamming.get_hamming_difference_between('GATACA', 'GCATAA')
  end

  def test_large_distance_in_off_by_one_strand
    assert_equal 9, Hamming.get_hamming_difference_between('GGACGGATTCTG', 'AGGACGGATTCT')
  end

  def test_empty_strands
    assert_equal 0, Hamming.get_hamming_difference_between('', '')
  end

  def test_disallow_first_strand_longer
    assert_raises(ArgumentError) { Hamming.get_hamming_difference_between('AATG', 'AAA') }
  end

  def test_disallow_second_strand_longer
    assert_raises(ArgumentError) { Hamming.get_hamming_difference_between('ATA', 'AGTG') }
  end

  # This test is for the sake of people providing feedback, so they
  # know which version of the exercise you are solving.
  def test_bookkeeping
    skip
    assert_equal 1, Hamming::VERSION
  end
end
