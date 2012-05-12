/* * * *
 *
 * UI settings bootstrap
 */
$(document).ready(function ()
{
    $('#sign-tabs a').click(function (event)
    {
        event.preventDefault();
        $(this).tab('show');
    })
    $('.popover-info').popover()
})

