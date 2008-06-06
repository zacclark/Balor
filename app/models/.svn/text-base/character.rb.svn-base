class Character < ActiveRecord::Base
  validates_presence_of :name, :on => :create, :message => "You need a name."
  validates_presence_of :race, :on => :create, :message => "You need a race."
  validates_numericality_of :hit_points, :armor_bonus, :deflection_bonus, :natural_armor, :message => "Needs to be a number."
  
  belongs_to :user
  
  has_many :careers
  has_many :skills
  has_many :feats
  has_many :items
  has_many :spells
  
  #           0   1   2   3   4   5   6   7   8   9  10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29
  $stat_mod = [-5, -5, -4, -4, -3, -3, -2, -2, -1, -1, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9]
  
  def ac
    10 + $stat_mod[self.stats_dex] + self.deflection_bonus + self.natural_armor+ self.armor_bonus
  end
  
  def touch_ac
    10 + $stat_mod[self.stats_dex] + self.deflection_bonus
  end
  
  def flat_footed_ac
    10 + self.armor_bonus + self.deflection_bonus + self.natural_armor
  end
  
  def reflex_save
    save = 0
    self.careers.each do |career|
      save += career.base_save_reflex || 0
    end
    save += $stat_mod[self.stats_dex]
    return save
  end
  
  def will_save
    save = 0
    self.careers.each do |career|
      save += career.base_save_will || 0
    end
    save += $stat_mod[self.stats_wis]
    return save
  end
  
  def fortitude_save
    save = 0
    self.careers.each do |career|
      save += career.base_save_fortitude || 0
    end
    save += $stat_mod[self.stats_con]
    return save
  end
  
  def attack_bonus
    bonus = 0
    self.careers.each do |career|
      bonus += career.base_attack_bonus || 0
    end
    return bonus
  end
  
  def surplus_skill_points
    points = 0
    surplus = 0
    self.skills.each do |skill|
      points += skill.rank || 0
    end
    self.careers.each do |career|
      surplus += (career.skills_per_level + $stat_mod[self.stats_int]) * (career.level + 3)
    end
    total = surplus - points 
    return "(#{total} points remaining)" if total > 0
    return "(#{total*-1} more than estimated)" if total < 0
  end
  
  def level_spells(level)
    spells = self.spells.find_all_by_level(level)
    return spells
  end
end
