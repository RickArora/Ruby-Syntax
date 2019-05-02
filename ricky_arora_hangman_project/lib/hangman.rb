require "byebug"
class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  def initialize()
      @secret_word = Hangman.random_word
      @guess_word = Array.new(secret_word.length, "_")
      @attempted_chars = []
      @remaining_incorrect_guesses = 5
  end

  def secret_word
    @secret_word
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def self.random_word
    DICTIONARY.sample
  end

  def already_attempted?(guessedChar)
    @attempted_chars.include?(guessedChar)
  end

  def get_matching_indices(singleChar) 
    indexes_of_letters_in_word = []
    @secret_word.chars.each_with_index do |elem, i| 
      if elem==singleChar
        indexes_of_letters_in_word.push(i)
      end
    end
    indexes_of_letters_in_word
  end

  def fill_indices(char_to_fill, array_of_char_index)
    @guess_word.each_with_index do |elem, i|
      if array_of_char_index.include?(i)
        @guess_word[i] = char_to_fill
      end
      #debugger
  end
  @guess_word
end

def try_guess(char)
  if already_attempted?(char)
    p "this has already been attempted"
    return false
  end
  @attempted_chars.push(char)
  if get_matching_indices(char)==[]
    @remaining_incorrect_guesses = @remaining_incorrect_guesses - 1
  else 
    fill_indices(char, get_matching_indices(char))
  end
  return true
end

def ask_user_for_guess
  p "Enter a char: "
  userInputChar = gets 
  userInputChar = userInputChar.chomp
  try_guess(userInputChar)
end

def win?
  if @guess_word.join == @secret_word
    p 'WIN'
    return true 
  end
  return false
end

def lose?
  if @remaining_incorrect_guesses == 0 
    p "LOSE"
    return true 
  end
  return false
end

def game_over?
  if (lose?() || win?())
    p @secret_word
    return true
  end
  return false
end

end
