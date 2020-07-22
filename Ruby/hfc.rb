def h_f(str)
    map = {}
    for i in(0...str.length)
      ch = str[i];
      if map.key?ch
        map[ch] = map[ch] + 1
      else
        map[ch] = 1;
      end
    end

    hfc = '-'
    hf = 0;
    map.each do|key,val|
      if val > hf
        hf = val
        hfc = key
      end
    end
puts hfc 
puts hf
end

h_f("abcccdhudgweyfgwegfwejj")