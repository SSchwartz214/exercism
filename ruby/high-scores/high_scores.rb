class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores[-1]
  end

  def personal_best
    scores.max
  end

  def personal_top
    scores.max(3)
  end

  def score_differential
    personal_best - latest
  end

  def report
    "Your latest score was #{latest}. #{praise_and_encouragement}"
  end

  def praise_and_encouragement
    if latest < personal_best
      "That's #{score_differential} short of your personal best!"
    elsif latest >= personal_best
      "That's your personal best!"
    end
  end
end