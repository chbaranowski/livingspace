<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title><g:layoutTitle default="Living Space"/></title>

    <!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
    <!--[if lt IE 9]>
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

    <r:require modules="bootstrap"/>
    <r:require modules="bootstrap-responsive-css"/>
    <r:require module="jquery"/>

    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">

    <link rel="stylesheet" href="${resource(dir: 'css', file: 'application.css')}" type="text/css">

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