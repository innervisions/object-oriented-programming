# 07 - Guessing Game (Part 2)
class GuessingGame
  GUESS_MESSAGE = {
    low: 'Your guess is too low.',
    high: 'Your guess is too high.',
    match: 'You guessed the number!'
  }.freeze

  GAME_RESULT = { low: :lose, high: :lose, match: :win }.freeze

  RESULT_MESSAGE = {
    win: 'You won!',
    lose: 'You have no more guesses. Better luck next time!'
  }.freeze

  def play
    clear_screen
    reset
    result = main_game
    display_result(result)
  end

  private

  attr_reader :secret_number, :range, :max_guesses

  def initialize
    @secret_number = nil
    @range = set_range
    @max_guesses = Math.log2(range.size).to_i + 1
  end

  def reset
    @secret_number = rand(range)
  end

  def main_game
    result = nil
    max_guesses.downto(1) do |guesses_remaining|
      display_guesses_remaining(guesses_remaining)
      result = check_guess(obtain_guess)
      puts GUESS_MESSAGE[result]
      break if result == :match
    end
    GAME_RESULT[result]
  end

  def display_guesses_remaining(guesses_remaining)
    if guesses_remaining > 1
      puts "You have #{guesses_remaining} guesses remaining."
    else
      puts 'You have 1 guess remaining.'
    end
  end

  def obtain_guess
    loop do
      print "Choose a number between #{range.first} and #{range.last}: "
      guess = gets.to_i
      return guess if range.cover?(guess)
      puts 'Invalid guess.'
    end
  end

  def check_guess(guess)
    case guess
    when (range.first...@secret_number) then :low
    when @secret_number then :match
    else :high
    end
  end

  def display_result(result)
    puts RESULT_MESSAGE[result]
  end

  def set_range
    print 'Choose a lower bound: '
    lower_bound = gets.to_i
    upper_bound = nil
    loop do
      print 'Choose an upper bound: '
      upper_bound = gets.to_i
      break unless upper_bound <= lower_bound
      puts "That's not a valid upper bound."
    end
    (lower_bound..upper_bound)
  end

  def clear_screen
    system('clear') || system('clr')
  end
end

game = GuessingGame.new
game.play
