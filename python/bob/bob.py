import re
import string

questions = ['do', 'what', 'why', 'does', 'is', 'are', 'am']


def hey(what):
    if what.isupper():
        return 'Whoa, chill out!'

    if is_it_a_question(what):
        return 'Sure.'

    if address_him_without_actually_saying_anything(what):
        return 'Fine. Be that way!'

    return 'Whatever.'


def address_him_without_actually_saying_anything(what):
    reg = re.compile('[a-zA-Z0-9]')
    return not reg.search(what)


def is_it_a_question(what):
    reg = re.compile('\?$')
    strip_what = what.strip()  # For questions with whitespaces in the end
    interrogation_in_the_end = reg.search(strip_what)

    what_lower_case = what.lower()
    is_there_questions_words = any(question in what_lower_case for question in questions)

    if is_there_questions_words and interrogation_in_the_end:
        return True
    elif interrogation_in_the_end:
        return True
