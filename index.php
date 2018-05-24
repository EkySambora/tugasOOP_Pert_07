<?php 
require_once __DIR__.'/vendor/autoload.php';

include 'include/header.php'; 
  
  if (isset($_GET['home'])) include 'pages/home.php'; 
  else if (isset($_GET['detail'])) include 'pages/detail.php';
  else if (isset($_GET['category'])) include 'pages/category.php';
  else if (isset($_GET['search'])) include 'pages/search.php'; 
  else include 'pages/home.php'; 

include 'include/side.php'; 
include 'include/footer.php'; 

?>     