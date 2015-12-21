class Hamming   
    
  def self.get_hamming_difference_between(strand1,strand2)
    raise ArgumentError.new("The strands are difference in regards the length.") unless both_strands_has_the_same_length(strand1, strand2) 
  
    different_nucleotides_between_strands(strand1.chars, strand2.chars)
 
  end
    
  private
    def self.both_strands_has_the_same_length(strand1,strand2)
      strand1.length == strand2.length
    end 
	
    def self.different_nucleotides_between_strands(nucleotides_of_strand1, nucleotides_of_strand2)
      nucleotides_of_strand1.zip(nucleotides_of_strand2).count{|n1,n2| n1 != n2 }
    end
    
end