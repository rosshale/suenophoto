function facebook_login() {
  FB.login(function(response) {
    if( response.session ) {
      if( response.perms ) {
        window.location = "/timelines"
      } else {
        // user is logged in, but did not grant any permissions
        alert("no permission for you!")
      }
    } else {
      // user did not log in
      alert("didn't log in")
    }
  }, {perms:'user_photos, friends_photos, user_photo_video_tags, friends_photo_video_tags'});
}