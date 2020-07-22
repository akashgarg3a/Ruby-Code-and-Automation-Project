def dispaly(arr)
  puts "*****************************"
  for i in (0..arr.length-1)
    for j in (0..arr[0].length-1)
      print arr[i][j].to_s + " "
    end
    puts
  end
  puts "*******************************"
end

def wave(arr)
  puts "*******************************"
  for j in (0..arr[0].length-1)
    if(j % 2 == 0)
      for i in (0...arr.length)
        print arr[i][j].to_s + " "
      end
    else
      for i in (0...arr.length).to_a.reverse
        print arr[i][j].to_s + " "
      end
    end
  end
  puts "*******************************"
end

m = gets.chomp.to_i
n = gets.chomp.to_i

arr = [];
for i in (0...m)
  rows = [];
  for j in(0...n)
    val = gets.chomp.to_i;
    rows.push(val)
  end
  arr.push(rows)
end

display(arr)
