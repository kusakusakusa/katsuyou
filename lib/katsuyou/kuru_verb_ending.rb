require_relative "ichidan_verb_ending"

module Katsuyou
  class KuruVerbEnding < IchidanVerbEnding
    def imperative
      "い"
    end

    def nu_form
      "ぬ"
    end

    def n_form
      "ん"
    end
  end
end
