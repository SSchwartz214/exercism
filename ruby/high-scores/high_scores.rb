class HighScores

  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores[-1]
  end

  def personal_best
    @scores.max
  end

  def personal_top
    @scores.max(3)
  end

  def score_differential
    personal_best - latest
  end

  def report
    if latest < personal_best
      "Your latest score was #{latest}. That's #{score_differential} short of your personal best!"
    else
      "Your latest score was #{latest}. That's your personal best!"
    end
  end
end