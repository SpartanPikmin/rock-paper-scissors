class Game

  attr_reader :started, :finished

  def start
    @started = true
    @finished = false
  end

  def started?
    self.started || false
  end

  def finished?
    if(self.finished)
      self.finished
    else
      self.finished
    end
  end

  #ideas for the challenge that I dont have time to test:
  #1) extract play into its own object and have game.play(left, right) call play.play(left,right)
  #     (nameing needs to change in play I know), and return the output of play.play
  #2) extract/delegate the play method into smaller methods
  #3) do what we did in the bottles exersise and see if there are any commonalities in each statment. 
  #     atfirst I had a lot of elifs but then I condensed them into 4 if/elsif statments. could potentially 
  #      condence further too.

  def play(left = nil, right = nil)
    raise 'Game must first be started' unless started?
    return nil unless (left && right)
    if ((left == :rock && right == :scissors) || left == :scissors && right == :rock)
      @finished = true
      "Rock beats scissors!"
    elsif((left == :paper && right == :rock) || (left == :rock && right == :paper))
      @finished = true
      "Paper beats rock!"
    elsif((left == :scissors && right == :paper) || (left == :paper && right == :scissors))
      @finished = true
      "Scissors beats paper!"
    elsif((left == :scissors && right == :scissors) || (left == :paper && right == :paper) || (left == :rock && right == :rock))
      "Tie game. Try again!"
    else
      :UNKNOWN
    end
  end

end