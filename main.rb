# frozen_string_literal: true

class Game
  def gen_numbers
    num1 = rand(1..20)
    num2 = rand(1..20)
  end

  def question
    @question = puts "#{current_player}: What does #{num1} plus #{num2} equal?"
  end

  def turn
    puts '----- NEW TURN -----'
    @question
  end
end

class Player
  def initialize(name)
    @name = name
  end
end

# Question

answer = gets.chomp
# Check answer
if answer == (num1 + num2)
  puts 'That is correct!'
else
  puts "Nope... the answer is #{num1 + num2}"
  # Score
  puts "P1: #{p1_lives}/3 vs P2: #{p2_lives}/3"
end
