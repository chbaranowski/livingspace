$(document).ready(function ()
{
    $('#sign-tabs a').click(function (e)
    {
        e.preventDefault();
        $(this).tab('show');
    })

    $('.popover-info').popover()

})
