def separate_comma(number)
  number.reverse.gsub(/...(?=.)/, '\&,').reverse
end