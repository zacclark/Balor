module CareersHelper
  def attack_bonus(base_attack_bonus, adjust=0)
    #if base_attack_bonus == 1..6
    #  "+#{base_attack_bonus}"
    #elsif base_attack_bonus == 7..10
    #  "+#{base_attack_bonus}/+#{base_attack_bonus - 5}"
    #elsif base_attack_bonus == 0
    #  "0"
    #end
    if base_attack_bonus < 6
      "+#{base_attack_bonus + adjust}"
    elsif base_attack_bonus < 11
      "+#{base_attack_bonus + adjust}/+#{base_attack_bonus - 5 + adjust}"
    elsif base_attack_bonus < 16
      "+#{base_attack_bonus + adjust}/+#{base_attack_bonus - 5 + adjust}/+#{base_attack_bonus - 10 + adjust}"
    elsif base_attack_bonus < 21
      "+#{base_attack_bonus + adjust}/+#{base_attack_bonus - 5 + adjust}/+#{base_attack_bonus - 10 + adjust}/+#{base_attack_bonus - 15 + adjust}"
    end
  end
end
