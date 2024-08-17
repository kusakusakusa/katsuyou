require_relative "verb_stem"
require_relative "verb_ending"

module Katsuyou
  class ZipsEndings
    def call(text, conjugation_type)
      text = conjugation_type.code == "vs" ? text + "する" : text
      stem = VerbStem.for(text, conjugation_type)
      ending = VerbEnding.for(conjugation_type)

      {
        masu_form: stem.masu_form + ending.masu_form,
        nu_form: stem.nu_form + ending.nu_form,
        n_form: stem.n_form + ending.n_form,
        # Present
        present: text,
        present_polite: stem.present_polite + ending.present_polite,
        present_negative: stem.present_negative + ending.present_negative,
        present_negative_abbreviated: stem.present_negative_abbreviated + ending.present_negative_abbreviated,
        present_negative_polite: stem.present_negative_polite + ending.present_negative_polite,
        # Past
        past: stem.past + ending.past,
        past_polite: stem.past_polite + ending.past_polite,
        past_negative: stem.past_negative + ending.past_negative,
        past_negative_polite: stem.past_negative_polite + ending.past_negative_polite,
        # Conjunctive
        conjunctive: stem.conjunctive + ending.conjunctive,
        conjunctive_polite: stem.conjunctive_polite + ending.conjunctive_polite,
        conjunctive_negative: stem.conjunctive_negative + ending.conjunctive_negative,
        conjunctive_negative_polite: stem.conjunctive_negative_polite + ending.conjunctive_negative_polite,
        # Provisional
        provisional: stem.provisional + ending.provisional,
        provisional_negative: stem.provisional_negative + ending.provisional_negative,
        # Volitional
        volitional: stem.volitional + ending.volitional,
        volitional_polite: stem.volitional_polite + ending.volitional_polite,
        # Imperative
        imperative: stem.imperative + ending.imperative,
        imperative_negative: text + "な",
        # Potential
        potential: stem.potential + ending.potential,
        potential_polite: stem.potential_polite + ending.potential_polite,
        potential_negative: stem.potential_negative + ending.potential_negative,
        potential_negative_polite: stem.potential_negative_polite + ending.potential_negative_polite,
        # Passive
        passive: stem.passive + ending.passive,
        passive_conjunctive: stem.passive + ending.passive_conjunctive,
        passive_conjunctive_masu_form: stem.passive + ending.passive_conjunctive_masu_form,
        passive_conjunctive_past: stem.passive + ending.passive_conjunctive_past,
        passive_polite: stem.passive_polite + ending.passive_polite,
        passive_polite_past: stem.passive_polite + ending.passive_polite_past,
        passive_negative: stem.passive_negative + ending.passive_negative,
        passive_negative_past: stem.passive_negative + ending.passive_negative_past,
        passive_negative_polite: stem.passive_negative_polite + ending.passive_negative_polite,
        passive_negative_polite_past: stem.passive_negative_polite + ending.passive_negative_polite_past,
        # Desire
        desire: stem.masu_form + ending.desire,
        desire_negative: stem.masu_form + ending.desire_negative,
        desire_conditional: stem.masu_form + ending.desire_conditional,
        desire_negative_conditional: stem.masu_form + ending.desire_negative_conditional,
        # Causative
        causative: stem.causative + ending.causative,
        causative_conjunctive: stem.causative + ending.causative_conjunctive,
        causative_conjunctive_masu_form: stem.causative + ending.causative_conjunctive_masu_form,
        causative_provisional: stem.causative + ending.causative_provisional,
        causative_polite: stem.causative_polite + ending.causative_polite,
        causative_negative: stem.causative_negative + ending.causative_negative,
        causative_negative_polite: stem.causative_negative_polite + ending.causative_negative_polite,
        # Causative-passive
        causative_passive: stem.causative_passive + ending.causative_passive,
        causative_passive_colloquial: stem.causative_passive_colloquial + ending.causative_passive_colloquial,
        causative_passive_colloquial_conjunctive: stem.causative_passive_colloquial_conjunctive + ending.causative_passive_colloquial_conjunctive,
        causative_passive_polite: stem.causative_passive_polite + ending.causative_passive_polite,
        causative_passive_negative: stem.causative_passive_negative + ending.causative_passive_negative,
        causative_passive_negative_polite: stem.causative_passive_negative_polite + ending.causative_passive_negative_polite
      }
    end
  end
end
