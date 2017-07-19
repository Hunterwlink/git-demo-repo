sone_function = ->
    console.log("I'm in another function")
    
$ ->
    $('#myButton').click ->
    $.ajax
    type: 'POST'
    url: '/guides'
    data: "guide[title]=Hey from coffeescript!"