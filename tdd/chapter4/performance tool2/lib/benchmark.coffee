benchmark = do ->
  times = {}

  init = (name) ->
    heading = document.createElement "h2"
    heading.innerHTML = name
    document.body.appendChild heading

    ol = document.createElement "ol"
    document.body.appendChild ol

    ol

  runTests = (tests, view, iterations) ->
    for label of tests
      if (not tests.hasOwnProperty label) or typeof tests[label] isnt "function"
        continue

      do (name = label, test = tests[label]) ->
        func = ->
          start = new Date().getTime()
          l = iterations

          if not test.length
            while l--
              test()
          else
            test l

          total = new Date().getTime() - start
          times[name] = total

          li = document.createElement "li"
          li.innerHTML = "#{name}: #{total} ms(total), #{total / iterations} ms(avg)"
          view.appendChild li
          return
        setTimeout func, 15
        return
    return

  highlightExtremes = (view) ->
    func = ->
      min = new Date().getTime()
      max = 0

      for label of times
        if not times.hasOwnProperty label
          continue

        if times[label] < min
          min = times[label]
          fastest = label

        if times[label] > max
          max = times[label]
          slowest = label

      lis = view.getElementsByTagName "li"
      fastRegexp = new RegExp "^#{fastest}:"
      slowRegexp = new RegExp "^#{slowest}:"

      for li in lis
        if slowRegexp.test li.innerHTML
          li.style.color = "#c00"
        if fastRegexp.test li.innerHTML
          li.style.color = "#0c0"
      return

    setTimeout func, 15
    return

  benchmark = (name, tests, iterations) ->
    iterations = iterations or 1000
    times = {}
    view = init name
    runTests tests, view, iterations
    highlightExtremes view
    return

  return benchmark

