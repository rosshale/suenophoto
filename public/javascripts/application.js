function facebook_login() {
  FB.login(function(response) {
    if( response.session ) {
      if( response.perms ) {
        FB.XFBML.parse( $('#facebook_friends_box')[0] );

        if( $.browser.msie && parseInt($.browser.version) <= 7 ) {
          $('input, a img, label').hide();

        }

      } else {
        // user is logged in, but did not grant any permissions
      }
    } else {
      // user did not log in
    }
  }, {perms:'publish_stream'});
}