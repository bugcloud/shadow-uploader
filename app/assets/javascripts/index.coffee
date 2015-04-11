$ ->
  videos = $('video')
  min = 0
  max = videos.length - 1
  setInterval () ->
    i = Math.floor(Math.random() * (max - min) + min)
    videos.filter(":eq(#{i})").get(0).play()
  , 6000
  setInterval () ->
    window.location.reload()
  , 60000
