runBenchmark = (name, test) ->
  ol = document.getElementById "looplist"
  if not ol
    ol = document.createElement "ol"
    ol.id = "looplist"
    document.body.appendChild ol

  func = ->
    start = new Date().getTime()
    test()
    total = new Date().getTime() - start

    li = document.createElement "li"
    li.innerHTML = "#{name}: #{total}ms"
    ol.appendChild li
    return

  setTimeout func, 15
  return



