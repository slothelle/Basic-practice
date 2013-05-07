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
  string.gsub(/\./, "-")
  # Need to find a way to make 480014430 into 480-01-4430
end