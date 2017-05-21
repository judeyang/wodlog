module ScoringsHelper
  def render_scoring(scoring)
    minutes = scoring.content / 60
    seconds = scoring.content - minutes * 60
    "#{minutes}min#{seconds}"
  end
end
