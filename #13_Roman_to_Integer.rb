def roman_to_int(s)
  # ローマ数字に対応した数値を並べたハッシュを用意
  hash = { "I"=>1, "V"=>5, "X"=>10, "L"=>50, "C"=>100, "D"=>500, "M"=>1000 }

  # ハッシュに対し引数の文字列1文字ずつを順番に検索する
  hash.values_at(*s.chars).each.with_index.inject(0) do |result, (n, index)|

    # 文字列の次の文字が現在の文字が表す数値の5倍もしくは10倍の場合、戻り値から現在の値を予め引いておく
    if hash[s[index+1]] == n * 5 || hash[s[index+1]] == n * 10
      result - n
    else
      result + n
    end
  end
end
p roman_to_int("III")
p roman_to_int("IV")
p roman_to_int("IX")
p roman_to_int("LVIII")
p roman_to_int("MCMXCIV")
