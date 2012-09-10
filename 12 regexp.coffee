### Basic ###
str = "abcdefgcde"
console.log str

str = str.replace /cde/g, "CDE"
console.log str

### Here RegExp ###
str = "rgba(128, 64, 255)"
r = ///
  ^rgba\(
  (\d{1, 3}),\s*
  (\d{1, 3}),\s*
  (\d{1, 3})
  \)$
///

m = str.match(r)

for t, i in m
  console.log "#{i}, #{t}"



