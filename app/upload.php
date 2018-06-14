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

  $dish = getParam("dish", '');
  $restaurant = getParam("business_name", '');
  $rating = getParam("rating", 3);
  $menu_item = getParam("menu_item", '');
  $description = getParam("description", '');
  $comments = getParam("comments", '');
  $email = getParam("email", '');

  $filename = getParam('filename', '');  // If this is defined, we are updating a record.
  if ($filename == '') {
    $filename = copyUploadedFile();
  }

  $sql = "call insert_photo('$filename', '$dish', '$restaurant', $rating, '$menu_item', '$description', '$comments', '$email');";
//  echo $sql;
  dbGet($db, $sql);
//  var_dump($_POST);

  echo '<meta http-equiv="refresh" content="0; url=index.html">';
}

function copyUploadedFile() {
  $field_name = "uploaded_file";

  if (! array_key_exists($field_name, $_FILES)) {
    return '';
  }

//  var_dump($_FILES);

  $src_file = $_FILES[$field_name]["name"];
  $tmp_name = $_FILES[$field_name]["tmp_name"];
  $target_dir = "uploads/";
  $ext = pathinfo($src_file, PATHINFO_EXTENSION);
  $basename = uniqid() . "." . $ext; // basename($src_file);
  $target_file = $target_dir . $basename;

 // echo "src_file: $src_file, tmp_name: $tmp_name, target_file: $target_file";

//  return $basename;

  if(move_uploaded_file($tmp_name, $target_file)) {
//      echo "The file ".  $basename . " has been uploaded";
  } else{
//      echo "There was an error uploading the file $basename, please try again!";
  }

  return $basename;
}

main();

?>
  

