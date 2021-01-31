# 06 - Guessing Game
class GuessingGame
  RANGE = (1..100)
  MAX_GUESSES = 7

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

  def initialize
    @secret_number = nil
  end

  def reset
    @secret_number = rand(RANGE)
  end

  def main_game
    result = nil
    MAX_GUESSES.downto(1) do |guesses_remaining|
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
      print "Choose a number between #{RANGE.first} and #{RANGE.last}: "
      guess = gets.to_i
      return guess if RANGE.cover?(guess)
      puts 'Invalid guess.'
    end
  end

  def check_guess(guess)
    case guess
    when (RANGE.first...@secret_number) then :low
    when @secret_number then :match
    else :high
    end
  end

  def display_result(result)
    puts RESULT_MESSAGE[result]
  end

  def clear_screen
    system('clear') || system('clr')
  end
end

game = GuessingGame.new
game.play
