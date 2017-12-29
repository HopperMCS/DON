<?xml version="1.0" encoding="UTF-8" ?>
<%--
Index page. This is currently entirely static HTML, but may eventually require some server-side code
to, for instance, display the number of connected players.

@author Andy Janata (ajanata@socialgamer.net)
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" href="material.min.css">
<script src="material.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Decks of Neurodiversity</title>
</head>

<body>

<!-- Always shows a header, even in smaller screens. -->
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
	  height: 176px;
	  background: url('images/doit.jpg') center / cover;
	}
	.demo-card-wide > .mdl-card__menu {
	  color: #fff;
	}
	.mdl-card__title-text {
	  color: white;
	}
	</style>
	<br>
	<div class="demo-card-wide mdl-card mdl-shadow--2dp">
	  <div class="mdl-card__title"><br>
	    <h2 class="mdl-card__title-text">Welcome</h2>
	  </div>
	  <div class="mdl-card__supporting-text">
	    <p>
	    This is a fork of the original PretendYoureXYZZY, which was someone's side project. However, the UI was trash and it's easy to see
	    why. The issue is that for every change made, the server has to be restarted, which is a relatively irritating nuissance. That said,
	    I am cleaning it up (or in the process of). I want to add Facebook integration and get rid of the chat (I've never had a reason to use it,
	    and neither should you). There is a roadmap coming soon. This is a pre-alpha redesign. The repo can be found open-source at github.com/MGageMorgan.
	    </p>
	  </div>
	  <div class="mdl-card__actions mdl-card--border">
	    <a onclick="window.location='game.jsp';" class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
		Push to Start!
	    </a>
	  </div>
	  </div>
	</div>

    </div>
  </main>
</div>

</body>
</html>
