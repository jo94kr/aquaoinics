<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!doctype html>
  <html lang="en">
  
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="css/simplebar.css">
    <!-- Fonts CSS -->
    <link
      href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="css/feather.css">
    <link rel="stylesheet" href="css/select2.css">
    <link rel="stylesheet" href="css/dropzone.css">
    <link rel="stylesheet" href="css/uppy.min.css">
    <link rel="stylesheet" href="css/jquery.steps.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/quill.snow.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="css/app-dark.css" id="darkTheme" disabled>
  </head>
  <nav class="navbar navbar-expand-lg navbar-light bg-white flex-row border-bottom shadow">
    <div class="container-fluid">
      <a class="navbar-brand mx-lg-1 mr-0" href="./index">
        <img src="./assets/images/logo.png" alt="..." style="max-width: 100%; max-height: 70px;">
        <!-- <svg version="1.1" id="logo" class="navbar-brand-img brand-sm" xmlns="./index" xmlns:xlink="./index" x="0px" y="0px" viewBox="0 0 120 120" xml:space="preserve">
          <g>
            <polygon class="st0" points="78,105 15,105 24,87 87,87 	" />
            <polygon class="st0" points="96,69 33,69 42,51 105,51 	" />
            <polygon class="st0" points="78,33 15,33 24,15 87,15 	" />
          </g>
        </svg> -->
      </a>
      <button class="navbar-toggler mt-2 mr-auto toggle-sidebar text-muted">
        <i class="fe fe-menu navbar-toggler-icon"></i>
      </button>
      <div class="navbar-slide bg-white ml-lg-4" id="navbarSupportedContent">
        <a href="#" class="btn toggle-sidebar d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
          <i class="fe fe-x"><span class="sr-only"></span></i>
        </a>
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="./index">
              <span class="ml-lg-2"><i class="fe fe-home fe-16" style="margin-right: 5px;"></i>메인페이지</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#" id="insertContent">
              <span class="ml-lg-2"><i class="fe fe-pen-tool fe-16" style="margin-right: 5px;"></i>글쓰기</span>
            </a>
          </li>
        </ul>
      </div>
      <!-- <form class="form-inline ml-md-auto d-none d-lg-flex searchform text-muted">
        <input class="form-control mr-sm-2 bg-transparent border-0 pl-4 text-muted" type="search" placeholder="Type something..." aria-label="Search">
      </form> -->
      <!-- <ul class="navbar-nav d-flex flex-row">
        <li class="nav-item">
          <a class="nav-link text-muted my-2" href="./#" id="modeSwitcher" data-mode="light">
            <i class="fe fe-sun fe-16"></i>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-muted my-2" href="./#" data-toggle="modal" data-target=".modal-shortcut">
            <i class="fe fe-grid fe-16"></i>
          </a>
        </li>
        <li class="nav-item nav-notif">
          <a class="nav-link text-muted my-2" href="./#" data-toggle="modal" data-target=".modal-notif">
            <i class="fe fe-bell fe-16"></i>
            <span class="dot dot-md bg-success"></span>
          </a>
        </li>
        <li class="nav-item dropdown ml-lg-0">
          <a class="nav-link dropdown-toggle text-muted" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="avatar avatar-sm mt-2">
              <img src="./assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">
            </span>
          </a>
          <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
            <li class="nav-item">
              <a class="nav-link pl-3" href="#">Settings</a>
            </li>
            <li class="nav-item">
              <a class="nav-link pl-3" href="#">Profile</a>
            </li>
            <li class="nav-item">
              <a class="nav-link pl-3" href="#">Activities</a>
            </li>
          </ul>
        </li>
      </ul> -->
    </div>
  </nav>