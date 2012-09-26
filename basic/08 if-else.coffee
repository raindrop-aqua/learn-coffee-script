### if ###
hoge = 100

if hoge is 100
  console.log "hogeは100です"

if hoge is 200
  console.log "hogeは200です"

### if and else-if ###
hoge = 128

if hoge is 100
  console.log "hogeは100です"
else if hoge is 128
  console.log "hogeは128です"

### unless ###
hoge = 128

unless hoge is 100
  console.log "hogeは100以外です"
else
  console.log "hogeは100です"

### if and else-if and else ###
hoge = 128

if hoge is 100
  console.log "hogeは100です"
else if hoge is 128
  console.log "hogeは128です"
else
  console.log "hogeは100以外です"

### if-then ###
hoge = 100

if hoge is 100 then console.log "100!"

### if-then-else ###
hoge = 128

if hoge is 128 then console.log "100!" else console.log "not 100!"

### If at the end ###
hoge = 100

console.log "100" if hoge is 100

### switch ###
hoge = 1

switch hoge
  when 1 then console.log "1"
  when 2 then console.log "2"
  when 3, 4
    console.log "3 or 4"
  when 5 then console.log "5"
  else console.log "other"

