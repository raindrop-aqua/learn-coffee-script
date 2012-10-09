if String::trim
  trim = (str) ->
    return str.trim()
else
  trim = (str) ->
    return str.replace /^\s+|\s+$/g, ""
