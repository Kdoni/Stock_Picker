sample = [1,3,6,9,15,8,6,1,17]

def stock_picker(array)
    max_difference=0
    empty_array = []
    array.each_with_index do |element,index|
        array.each_with_index do |sub_element,sub_index|
            if sub_element-element>=max_difference && index<sub_index
                max_difference=sub_element-element
            end
        end
    end
    array.each_with_index do |item, index|
        array.each_with_index do |sub_item,sub_index|
            if item+max_difference == sub_item && index<sub_index
                empty_array.push(index,sub_index)
                break
            end
        end
    end
    empty_array.slice(0,2)
end

p stock_picker(sample)