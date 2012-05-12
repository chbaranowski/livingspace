// Load the SDK Asynchronously
(function (d)
{
    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
    if (d.getElementById(id))
    {
        return;
    }
    js = d.createElement('script');
    js.id = id;
    js.async = true;
    js.src = "//connect.facebook.net/en_US/all.js";
    ref.parentNode.insertBefore(js, ref);
}(document));

// Init the SDK upon load
window.fbAsyncInit = function ()
{
    FB.init({
        appId:'309017599173232', // App ID
        channelUrl:'http://localhost:8080/livingspace/facebookChannel.html', // Path to your Channel File
        status:true, // check login status
        cookie:true, // enable cookies to allow the server to access the session
        xfbml:true  // parse XFBML
    });

    // listen for and handle auth.statusChange events
    FB.Event.subscribe('auth.statusChange', function (response)
    {
        if (response.authResponse)
        {
            // user has auth'd your app and is logged into Facebook
            FB.api('/me', function (me)
            {
                if (me.name)
                {
                    $('#signerEmail').val(me.email)
                    $('#signerName').val(me.name)
                    $('#supporterEmail').val(me.email)
                    $('#supporterName').val(me.name)
                }
            })
            $('.fb-login').hide()
        } else
        {
            // user has not auth'd your app, or is not logged into Facebook
            $('.fb-login').show()
        }
    });

    $('.fb-login').show()
}
