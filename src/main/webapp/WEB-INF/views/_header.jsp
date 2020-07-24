<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="WoloPolo Blog">
  <meta name="author" content="WoloPolo">

  <title>WOLOPOLO</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/ajax_send_data.js"> </script>
  
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />

  <link rel="icon" href="${pageContext.request.contextPath}/img/logo.png" sizes="32x32" type="image/png">

  <style>
    body {
      background: linear-gradient(-45deg, #fa8500, #91aa04, #007efc, #52016b);
      background-size: 400% 400%;
      animation: gradient 10s ease infinite;
    }

    @keyframes gradient {
      0% {
        background-position: 0% 50%;
      }

      50% {
        background-position: 100% 50%;
      }

      100% {
        background-position: 0% 50%;
      }
    }

    .masthead {
      height: 100vh;
      min-height: 500px;
    }

    

    .animation {
      left: 46%;
      animation-name: scroll-animation;
      animation-duration: 2s;
      animation-iteration-count: infinite;
    }

    @keyframes scroll-animation {
      0% {
        color: white;
        top: 80%;
      }

      50% {
        color: #6d6d6d;
        top: 120%;
      }

      100% {
        color: white;
        top: 80%;
      }
    }
  </style>