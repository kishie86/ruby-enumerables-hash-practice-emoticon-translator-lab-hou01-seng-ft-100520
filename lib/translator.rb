# require modules here
require 'yaml'
require 'pry'
def load_library(file_path)
  # code goes here
    new_hash = {}
    final_hash = YAML.load_file(file_path) 
    final_hash.each do |(key, value)|
    #binding.pry
    
    new_hash[key] = {}
    new_hash[key][:english] = value[0]
    new_hash[key][:japanese] = value[1]
    
    end
    new_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  
  final_hash = load_library(file_path)
  final_hash.keys.map do |value, key|
    if [key] == emoticon
      puts [:japanese]
    end
      
    binding.pry
    #new_hash[key][:english] = value[0]
    #new_hash[value][:japanese] = value[1]
    
   
  end
  #return [:japanese][value]
end

def get_english_meaning(file_path, emoticon)
  # code goes here
   final_hash = load_library(file_path) 
    emoticon = final_hash.keys.find do |key|
      final_hash[key][:japanese] == emoticon
      
      
       #binding.pry
      
 #binding.pry
  end
  if emoticon != nil 
    emoticon 
  else 
    "Sorry, that emoticon was not found"
  end
end