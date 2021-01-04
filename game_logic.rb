class Game
  def question(current_player)
    num1 = rand(1..20)
    num2 = rand(1..20)

    @question = puts "#{current_player.name}: What does #{num1} plus #{num2} equal?"
    answer = gets.chomp

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

  def change_player(current_player)
    if current_player == p1
      current_player = p2
    else
      current_player = p1
    end
  end

end