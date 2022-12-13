This module reviews methods of getting the right precision in numerical answers, particularly for homeworks/quizzes/exams.

# significant digits

The default precision for numerical answers to statistics questions should be 3 significant digits.    Significant digits are the ones left after trimming zeroes from the left of the number.   For example, if the number is 0.012345, this number has 5 significant digits because we trim off the "0.0" before counting them.

However, 3 significant digits is not what you should use until the very end of a calculation.  Intermediate calculations should have > 3 significant digits if you want the final answer to be accurate to 3 significant digits.  We want to avoid "round-off error" that builds up in a calculation and can lead to getting the wrong answer.  Therefore use 5 significant digits for intermediate calculations.

# decimal places

If the question asks for a specific number of decimal places, this is the number of digits (zero or not) to the right of the decimal point.   For example, 0.01 is precise to 2 decimal places, but has only 1 significant digit.

# percent vs probability

When a question asks for a probability, normally you should provide this as a number between 0 and 1, not as a percentage.   However, if the problem asks you for a percentage, it's just the probability times 100.   For example, 0.987 = 98.7% , and both of these are provided to 3 significant digits (no change in precision).

# leading zeroes for numbers between -1 and 1

If you are asked to enter a number greater than -1 and less than 1, place a 0 to the left of the decimal point.  This is a little easier to read.  It is equivalent if you write the number without the leading zero, but BrightSpace will not understand that, so we have to pick one format to recognize.  Otherwise it would be necessary to provide both formats as answers for all quiz questions.

# No data entry validation

Unfortunately BrightSpace doesn't know that the answer you are providing is a number.   This may be a flaw in BrightSpace that I brought to CETL's attention, but for now you should be sure that you typed the answer correctly - BrightSpace won't tell you if you didn't.   For example, it doesn't tell you if you put a comma where the period punctuation should be in the number.
