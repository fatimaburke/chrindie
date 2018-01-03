document.addEventListener("turbolinks:load", function() {
// $(document).ready(function() {
    new jPlayerPlaylist({
      jPlayer: '#jquery_jplayer_1',
      cssSelectorAncestor: '#jp_container_1'
    }, allTracks, {
      swfPath: '/js',
      supplied: 'mp3',
      wmode: 'window',
      useStateClassSkin: true,
      autoBlur: false,
      smoothPlayBar: true,
      keyEnabled: true
    });
  // });
})
