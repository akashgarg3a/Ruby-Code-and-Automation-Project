require 'algorithms'
include Containers

class Edge
  attr_accessor :nvtx,:wt
  def initialize(vtx,wt)
   @nvtx=vtx
   @wt=wt  
  end
   def to_s
    return nvtx.to_s+" @ "+wt.to_s

   end
end

class Dpair
  attr_accessor :vtx,:psf,:csf
  def initialize(vtx,psf,csf)
    @vtx=vtx
    @psf=psf
    @csf=csf
  end
  def to_s
    return "#{@vtx.to_s} - #{@csf.to_s}" 
  end
end

#nvtx is neighbouring vertex 
graph=[]
#index lhs will represent vertex
#index rhs will represent cost 
graph[0]=[Edge.new(1,10),Edge.new(3,40)]
graph[1]=[Edge.new(0,10),Edge.new(2,10)]
graph[2]=[Edge.new(1,10),Edge.new(3,10)]
graph[3]=[Edge.new(0,40),Edge.new(4,2),Edge.new(2,10)]
graph[4]=[Edge.new(3,2),Edge.new(6,5),Edge.new(5,3)]
graph[5]=[Edge.new(4,3),Edge.new(6,3)]
graph[6]=[Edge.new(5,3),Edge.new(4,5)]

def dijkstra(graph,src)
  pq=PriorityQueue.new()
  #push the source node
   pq.push(Dpair.new(src,src.to_s,0),0)
   #to mark we will make hash object
   hash={}
  #run till pq is empty
   while pq.size()>0
    rem=pq.pop()
    if(hash.key?(rem.vtx))
      next
    end
    #mark yourself
    hash[rem.vtx]=true
    #print
    puts rem
    #unmarked neiwghbours add
    for ei in(0..graph[rem.vtx].length-1)
      edge=graph[rem.vtx][ei]
      if(hash.key?(edge.vtx)==false)
        pq.push(Dpair.new(edge.vtx,rem.psf+edge.vtx.to_s,rem.csf+edge.wt),-(rem.csf+edge.wt))  
      end 
    end
  end
end

dijkstra(graph,0)