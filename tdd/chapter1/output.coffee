output = (text, color) ->
  p = document.createElement "p"
  p.innerHTML = text
  p.style.color = color
  document.body.appendChild(p)
