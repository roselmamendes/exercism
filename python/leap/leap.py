def is_leap_year(year):
	is_divisible_by_four = (year % 4 == 0)
	
	return is_leap_year_without_two_zeros_at_end(is_divisible_by_four, year) \
		or \
	       is_leap_year_with_two_zeros_at_end(is_divisible_by_four, year)
		
def has_two_zeros_at_end_of(year):
	return (year % 100 == 0)

def is_divisble_for_400(year):
	return (year % 400 == 0)

def is_leap_year_without_two_zeros_at_end(is_divisible_by_four, year):
	return is_divisible_by_four and not has_two_zeros_at_end_of(year)

def is_leap_year_with_two_zeros_at_end(is_divisible_by_four, year):
	return is_divisible_by_four and is_divisble_for_400(year)
		
	