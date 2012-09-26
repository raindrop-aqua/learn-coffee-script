str = "110-0001"

if str.match(/^\d{3}-\d{4}$/g)
  console.log "OK"
else
  console.log "NG"
