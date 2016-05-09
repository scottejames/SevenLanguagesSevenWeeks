#!/usr/bin/ruby

class Tree
	attr_accessor :children, :node_name

	 
	def initialize(tree={})  
    	tree.each_pair do |node_name, children| 
      		node_children = []
    
      		children.each_pair do |child_name, grandchildren|      
        		node_children.push(Tree.new({child_name => grandchildren}))
      		end
      
      	@node_name = node_name
      	@children = node_children
   		end
  	end
  	
  	def visit_all(&block)
    	visit &block
    	children.each {|c| c.visit_all &block}
  	end

  	def visit(&block)
    	block.call self
  	end
end


family_tree = Tree.new({'Grandpa' =>{
						'Dad' => {
						'Me!' => {}, 
						'Brother' => {}
						}, 'Uncle' => {
						'Cousin 1' => {}, 
						'Cousin 2' => {}
						}
				}})

puts "Visiting a node"
family_tree.visit {|node| puts node.node_name}
puts
puts "visiting entire tree"
family_tree.visit_all {|node| puts "#{node.node_name}"}
