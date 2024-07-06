require_relative "ichidan_verb_ending"

module Katsuyou
  class SuruVerbEnding < IchidanVerbEnding
    def masu_form
      ""
    end

    def potential
      "る"
    end

    def potential_polite
      "ます"
    end

    def potential_negative
      "ない"
    end

    def potential_negative_polite
      "ません"
    end

    def passive
      "れる"
    end

    def passive_conjunctive
      "れて"
    end

    def passive_conjunctive_masu_form
      "れ"
    end

    def passive_polite
      "れます"
    end

    def passive_negative
      "れない"
    end

    def passive_negative_polite
      "れません"
    end

    def causative
      "せる"
    end

    def causative_conjunctive
      "せて"
    end

    def causative_conjunctive_masu_form
      "せ"
    end

    def causative_provisional
      "せば"
    end

    def causative_polite
      "せます"
    end

    def causative_negative
      "せない"
    end

    def causative_negative_polite
      "せません"
    end

    def causative_passive
      "せられる"
    end

    def causative_passive_colloquial
      "せられる"
    end

    def causative_passive_polite
      "せられます"
    end

    def causative_passive_negative
      "せられない"
    end

    def causative_passive_negative_polite
      "せられません"
    end
  end
end
