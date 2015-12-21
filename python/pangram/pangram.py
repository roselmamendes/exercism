import string

def is_pangram(phrase):
	alphabet = set(string.ascii_lowercase)
	phrase = set(phrase)
	
	pangram = alphabet - phrase

	pangram = [letter for letter in pangram if not letter.upper() in phrase]
	
	return not pangram