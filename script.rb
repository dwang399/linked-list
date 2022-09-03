class LinkedList
    def intialize(value)
        @head = Node.new(value, nil)
    end

    def append(value)
        if @head == nil
            @head = Node.new(value, nil)
        else
            current_node = @head
            until current_node.next_node == nil
                current_node = current_node.next_node
            end
            current_node.next_node = Node.new(value, nil)
        end
    end

    def at(index)
        i = 0
        current_node = @head
        if self.size - 1 < index
            return 'The Index requested exceeds the size of the List'
        end
        until i == index
            i += 1
            current_node = current_node.next_node
        end
        return current_node
    end

    def size
        count = 0
        current_node = @head
        until current_node.next_node == nil
            current_node = current_node.next_node
            count += 1
        end
        return count
    end

    def tail 
        current_node = @head
        until current_node.next_node == nil
            current_node = current_node.next_node
        end
        return current_node
    end

    def head
        @head != nil ? @head : nil
    end

    def pop
        current_node = @head
        until current_node.next_node == nil
            current_node = current_node.next_node
        end
        return current_node 
    end

    def prepend(value)
        new_node = Node.new(value, @head)
        @head = new_node
    end
            

    def contains?(value)
        if @head == nil
            return false
        elsif @head.value == value
            return true
        end

        current_node = @head
        until current_node.next_node == nil
            current_node = current_node.next_node
            if current_node.value == value
                return true
            end
        end
        return false
    end

    def find(value)
        if @head == nil
            return nil
        end
        i = 0
        current_node = @head
        until current_node.next_node == nil
            current_node = current_node.next_node
            i += 1
            if current_node.value == value
                return i
            end
        end
        return nil
    end
            
    def to_s
        if @head == nil
            return nil
        end
        current_node = @head
        string = "#{current_node.value} -> "
        until current_node.next_node == nil
            current_node = current_node.next_node
            string += "#{current_node.value} -> "
        end
        string += "nil"
        return string
    end
end

class Node
    attr_accessor :value, :next_node
    def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end
end