class Item
  attr_accessor:val,:wt,:rt
  def initialize(val,wt)
    @val=val
    @wt=wt
    @rt = val * 1.0 / wt
  end
  def to_s
    return val.to_s + "->" + wt.to_s + "->" + rt
  end
  # def <=>(other)
  #   if(@rt > other.rt)
  #     return 1
  #   elsif(@rt<other.rt)
  #     return -1 
  #   else
  #     return 0
  # end 
  def<=>(other)
    return @rt<=>other.rt
  end
end
# end

prices=[15,14,10,45,30]
wts=[2,5,1,3,4]
items=[]

for i in(0..prices.length - 1)
  item=Item.new(prices[i],wts[i])
  items.push(item)
end
items=items.sort
vib=0
rc=7
idx=items.length - 1
while(idx>=0)
  if(rc>=items[idx].wt)
    vib=vib +items[idx].val
    rc=rc-items[idx].wt
  else
    vib=vib+ rc*items[idx].rt
    rc=0
    break
  end
  idx=idx-1
end
puts vib