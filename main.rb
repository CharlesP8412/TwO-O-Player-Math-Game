# frozen_string_literal: true
require './game_logic.rb'
require './player.rb'

puts '==Two Player Math!!!=='
# Initialize Players
puts 'Enter name of player 1: '
p1 = Player.new(gets.chomp)
puts 'Enter name of player 2: '
p2 = Player.new(gets.chomp)
puts "#{p1.info} VS #{p2.info}... FIGHT!!! Uh I mean MATH!"

current_player = p1

#Initialize Game
game = Game.new

while p1.lives.positive? || p2.lives.positive?
  game.question(current_player)
  # score
  puts "#{p1.info} VS #{p2.info}"

  if p1.lives.zero? ||p2.lives.zero?
    if p1.lives.zero?
      #Winner becomes current player
      current_player = p2
    else
      current_player = p1
    end
    break
  end

  if current_player == p1
      current_player = p2
    else
      current_player = p1
  end
    game.turn
end

puts "#{current_player.name} Wins with a score of #{current_player.lives}/3"
puts '---- Game Over ----'
puts 'Good bye!'