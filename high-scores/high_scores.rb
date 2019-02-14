class HighScores

    attr_reader :scores, :latest, :highest, :top, :report

    def initialize(scores)
        @scores  = scores
        @latest  = scores.last
        @highest = scores.max
        @top     = scores.sort.reverse.first(3)
        @report  = "Your latest score was #{latest}. #{personal_best_message}"
    end

    private

    def personal_best_message
        latest == highest ? "That's your personal best!" : "That's #{highest - latest} short of your personal best!"
    end
end