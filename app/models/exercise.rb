class Exercise < ActiveRecord::Base


# imitation methods
def document_reader(document)
    the_text = document.downcase
    sanitized_text = the_text.gsub("-/", " ").delete(",.")
    split_words = sanitized_text.split 
    return split_words
end

def input_reader(input)
    the_text = input.downcase
    sanitized_text = the_text.gsub("-", " ").delete(",.")
    split_inputs = sanitized_text.split 
    return split_inputs
end

def checker(words, inputs)
    for word in words
        index_of_words = words.index(word)
        for input_word in inputs
           index_of_inputs = inputs.index(input_word)
            if index_of_words == index_of_inputs
                if word == input_word 
                    next
                else 
                    puts "Your input does not match"
                    next
                end
            else
                next
            end
        end
    end
end



# the_text = <<DOC 
# "Lorem Ipsum."
# DOC

# input_text = <<DOC 
# "Lorem Ipsum."
# DOC

# a = document_reader(the_text)

# b = input_reader(input_text)

# checker(a,b)




end
