module Katsuyou
  class VerbConjugation < Struct.new(
    :conjugation_type,
    :masu_form,
    :nu_form,
    # Present
    :present,
    :present_polite,
    :present_negative,
    :present_negative_polite,
    # Past
    :past,
    :past_polite,
    :past_negative,
    :past_negative_polite,
    # Conjunctive
    :conjunctive,
    :conjunctive_polite,
    :conjunctive_negative,
    :conjunctive_negative_polite,
    # Provisional
    :provisional,
    :provisional_negative,
    # Volitional
    :volitional,
    :volitional_polite,
    # Imperative
    :imperative,
    :imperative_negative,
    # Potential
    :potential,
    :potential_polite,
    :potential_negative,
    :potential_negative_polite,
    # Passive
    :passive,
    :passive_conjunctive,
    :passive_conjunctive_masu_form,
    :passive_conjunctive_past,
    :passive_polite_past,
    :passive_negative_past,
    :passive_negative_polite_past,
    :passive_polite,
    :passive_negative,
    :passive_negative_polite,
    # Desire
    :desire,
    :desire_negative,
    :desire_conditional,
    :desire_negative_conditional,
    # Causative
    :causative,
    :causative_conjunctive,
    :causative_conjunctive_masu_form,
    :causative_provisional,
    :causative_polite,
    :causative_negative,
    :causative_negative_polite,
    # Causative-passive
    :causative_passive,
    :causative_passive_colloquial,
    :causative_passive_polite,
    :causative_passive_negative,
    :causative_passive_negative_polite,
    keyword_init: true
  )
  end
end
