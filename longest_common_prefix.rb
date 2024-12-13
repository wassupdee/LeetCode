# 自分の回答
# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    string_length_hash = {}
    strs.each do |i|
	    string_length_hash[i] = i.length
    end

    min_length_string_pair = string_length_hash.min_by { |key, value| value }
    min_length_string = min_length_string_pair[0]
    min_length = min_length_string_pair[1]

    output = []
    end_of_process = false
    # 文字のインデックスを取り出す
    (0..min_length-1).each do |j|
        if end_of_process == false
            output << min_length_string[j]
            strs.each do |k|
                if k[j] != min_length_string[j]
                    output.pop
                    end_of_process = true
                    break
                end
            end
        end
    end
    return output.join
end
