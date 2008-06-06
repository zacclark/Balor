module CharactersHelper
  def stats_mod(stat)
    return $stat_mod[stat]
  end
  
  def total_skill(rank,stat)
    if stat == "str"
      rank + stats_mod(@character.stats_str)
    elsif stat == "dex"
      rank + stats_mod(@character.stats_dex)
    elsif stat == "con"
      rank + stats_mod(@character.stats_con)
    elsif stat == "int"
      rank + stats_mod(@character.stats_int)
    elsif stat == "wis"
      rank + stats_mod(@character.stats_wis)
    elsif stat == "cha"
      rank + stats_mod(@character.stats_cha)
    end
  end
end
