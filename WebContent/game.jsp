<?xml version="1.0" encoding="UTF-8" ?>
<%--
The main game page. This is almost entirely static HTML, other than ensuring that a session is
created for the user now.

@author Andy Janata (ajanata@socialgamer.net)
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<%@ page import="net.socialgamer.cah.data.GameOptions" %>
<%
// Ensure a session exists for the user.
@SuppressWarnings("unused")
HttpSession hSession = request.getSession(true);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Pretend You're Xyzzy</title>
<link rel="stylesheet" href="material.min.css">
<script src="material.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/jquery-migrate-1.2.1.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>
<script type="text/javascript" src="js/jquery.json.js"></script>
<script type="text/javascript" src="js/QTransform.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/cah.js"></script>
<script type="text/javascript" src="js/cah.config.js"></script>
<%-- cah must be first, ajax must be before app. app probably has to be last. --%>
<%-- TODO make this be dynamic with looking at the filesystem and using jquery --%>
<%-- except that is nontrivial thanks to dependency ordering -_- --%>
<script type="text/javascript" src="js/cah.constants.js"></script>
<script type="text/javascript" src="js/cah.log.js"></script>
<script type="text/javascript" src="js/cah.gamelist.js"></script>
<script type="text/javascript" src="js/cah.card.js"></script>
<script type="text/javascript" src="js/cah.cardset.js"></script>
<script type="text/javascript" src="js/cah.game.js"></script>
<script type="text/javascript" src="js/cah.preferences.js"></script>
<script type="text/javascript" src="js/cah.longpoll.js"></script>
<script type="text/javascript" src="js/cah.longpoll.handlers.js"></script>
<script type="text/javascript" src="js/cah.ajax.js"></script>
<script type="text/javascript" src="js/cah.ajax.builder.js"></script>
<script type="text/javascript" src="js/cah.ajax.handlers.js"></script>
<script type="text/javascript" src="js/cah.app.js"></script>
<link rel="stylesheet" type="text/css" href="cah.css" media="screen" />
<link rel="stylesheet" type="text/css" href="jquery-ui.min.css" media="screen" />
<jsp:include page="analytics.jsp" />
</head>
<body>

<div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
  <header class="mdl-layout__header">
    <div class="mdl-layout__header-row">
      <!-- Title -->
      <span class="mdl-layout-title">Decks of Neurodiversity</span>
      <!-- Add spacer, to align navigation to the right -->
      <div class="mdl-layout-spacer"></div>
      <!-- Navigation. We hide it in small screens. -->
      <nav class="mdl-navigation mdl-layout--large-screen-only">
      </nav>
    </div>
  </header>
  <div class="mdl-layout__drawer">
    <span class="mdl-layout-title">Title</span>
    <nav class="mdl-navigation">
    </nav>
  </div>
  <main class="mdl-layout__content">
    <div class="page-content">
	<!-- Wide card with share menu button -->
	<style>
	.demo-card-wide.mdl-card {
	  width: 800px;
	  margin-left: 25%;
	}
	.demo-card-wide > .mdl-card__title {
	  color: #fff;
	  height: 50px;
	}
	.demo-card-wide > .mdl-card__menu {
	  color: #fff;
	}
	.mdl-card__title-text {
	  color: black;
	}
	</style>
	<br>
	<div class="demo-card-wide mdl-card mdl-shadow--2dp">
	  <div class="mdl-card__title"><br>
	    <h2 class="mdl-card__title-text">Enter A Nickname:</h2>
	  </div>
	  <div class="mdl-card__supporting-text">
		  <div class="mdl-textfield mdl-js-textfield">
		    <input class="mdl-textfield__input" type="text" id="nickname" maxlength="30" role="textbox" aria-label="Enter your nickname.">
		    <label class="mdl-textfield__label" for="nickname">Enter a Nickname Here...</label>
		  </div>
		  </div>
	  <div class="mdl-card__actions mdl-card--border">
	    <a onclick="window.location='game2.jsp';" id="nicknameconfirm" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
		Set
	    </a>
	  </div>
	  </div>
	</div>

    </div>
  </main>
</div>


</body>
</html>
