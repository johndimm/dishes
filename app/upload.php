<?php
 
function getParam($paramName, $defaultValue) {
    return (isset($_POST[$paramName])) ?  $_POST[$paramName] : $defaultValue;
}

function printJSON($db, $sql) {
  // Performing SQL query
  $result = dbGet($db, $sql);

  header('Content-type: application/json');
  header('Access-Control-Allow-Origin: *');
  // echo dump($result);
  echo json_encode($result);
}

function main() {
//  echo '[{"url":"http://www.johndimm.com/photos/2014/10/IMG_20141019_133156.jpg", "caption":"", "rating":"good", "rotation":0}]';
//  return;

  include "db.php";
  $db = dbInit();
  $basename = copyUploadedFile();
  $dish = getParam("Dish", '');
  $restaurant = getParam("Restaurant", '');
  $rating = getParam("Rating", 3);
  $menu_item = getParam("Menu Item", '');
  $description = getParam("Description", '');
  $comments = getParam("Comments", '');
  $email = getParam("email", '');

  $sql = "call insert_photo('$basename', '$dish', '$restaurant', $rating, '$menu_item', '$description', '$comments', '$email');";
  // echo $sql;
  dbGet($db, $sql);

//  echo '<meta http-equiv="refresh" content="0; url=upload.html">';
}

function copyUploadedFile() {
  $field_name = "uploaded_file";

  $src_file = $_FILES[$field_name]["name"];
  $tmp_name = $_FILES[$field_name]["tmp_name"];
  $target_dir = "uploads/";
  $ext = pathinfo($src_file, PATHINFO_EXTENSION);
  $basename = uniqid() . "." . $ext; // basename($src_file);
  $target_file = $target_dir . $basename;

  if(move_uploaded_file($tmp_name, $target_file)) {
//      echo "The file ".  $basename . " has been uploaded";
  } else{
//      echo "There was an error uploading the file $basename, please try again!";
  }

  return $basename;
}

main();

?>
  

