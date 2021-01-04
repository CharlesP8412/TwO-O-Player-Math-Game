# frozen_string_literal: true

class Game
  def question(current_player)
    num1 = rand(1..20)
    num2 = rand(1..20)

    @question = puts "#{current_player.name}: What does #{num1} plus #{num2} equal?"
    answer = $stdin.gets.chomp

    # Check answer
    if answer == (num1 + num2).to_s
      puts 'That is correct!'
    else
      puts "Nope... the answer is #{num1 + num2}"
      # decrement a life
      current_player.lives -= 1
    end
  end

  def turn
    puts "\n----- NEW TURN -----"
  end
end

class Question
end

class Player
  attr_accessor :lives
  attr_reader :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def info
    "#{name}: #{lives}/3"
  end
end


puts 'Want to play a game...Two Players Math!!!'
# Initialize Players
p1 = Player.new('Player 1')
p2 = Player.new('Player 2')

current_player = p1

game = Game.new

while p1.lives > 0
  game.question(current_player)
  # score
  puts "#{p1.info} VS #{p2.info}"
  if p1.lives == 0 
    puts "Good game, goodbye"
  else
    if current_player == p1
      current_player = p2
    else
      current_player = p1
    end
    game.turn
  end
end
