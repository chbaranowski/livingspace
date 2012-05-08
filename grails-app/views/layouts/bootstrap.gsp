<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Living Space"/></title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'application.css')}" type="text/css">
    <r:require module="jquery"/>
    <g:layoutHead/>
    <r:layoutResources/>
</head>

<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <g:link controller="index" action="index" class="brand">KN Wohnraum</g:link>
            <div class="nav-collapse">
                <ul class="nav">
                    <li><g:link controller="index"
                                action="signers">Unterzeichner & Unterstützer</g:link></li>
                    <li><g:link controller="index" action="impressum">Impressum</g:link></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row-fluid">
        <g:layoutBody/>
    </div>
</div>

<g:javascript library="bootstrap"/>
<g:javascript library="application"/>
<r:layoutResources/>
</body>
</html>