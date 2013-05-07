def has_ssn?(string)
  (/\d{3}\-\d{2}\-\d{4}/) =~ string 
end

def grab_ssn(string)
  string.slice(/\d{3}\-\d{2}\-\d{4}/)
end

def grab_all_ssns(string)
  string.scan(/\d{3}\-\d{2}\-\d{4}/)
end

def hide_all_ssns(string)
  string.gsub(/\d{3}\-\d{2}\-/, "XXX-XX-")
end

def format_ssns(string)  
  if string.match(/\b\d{9}\b/)
    string.gsub!(/(\d{3})(\d{2})(\d{4})/, '\1-\2-\3')
  end 
  
  string.gsub(/\./, "-")
end
