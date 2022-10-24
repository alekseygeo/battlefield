def get_words_count_by_lang()
    options = {}
     text = 'php ruby php java javascript go go go'
     result = text.split(" ")
     puts result
     result.each do |i|
    if options.key?(i)
    options[i] += 1
    else 
    options[i] =1
     end
     end
     puts options
     return options
    
    end
    get_words_count_by_lang