<?php

if (
  isset($_POST['company_Name']) && isset($_POST['customer_Name']) && isset($_POST['customer_Position']) && isset($_POST['customer_Telephone']) && isset($_POST['customer_Email']) &&
  isset($_POST['q1_s1']) && isset($_POST['q1_s2']) && isset($_POST['q1_s3']) && isset($_POST['q1_s4']) && isset($_POST['q1_s5']) && isset($_POST['q2_s1']) && isset($_POST['q2_s2']) &&
  isset($_POST['q2_s3']) && isset($_POST['q2_s4']) && isset($_POST['q2_s5']) && isset($_POST['q3_s1']) && isset($_POST['q3_s2']) && isset($_POST['q3_s3']) && isset($_POST['q3_s4'])
) {

  include 'configdb.php';

  $answer_company_Name = $_POST['company_Name'];
  $answer_customer_Name = $_POST['customer_Name'];
  $answer_customer_Position = $_POST['customer_Position'];
  $answer_customer_Telephone = $_POST['customer_Telephone'];
  $answer_customer_Email = $_POST['customer_Email'];

  $q1_s1 = $_POST['q1_s1'];
  $q1_s2 = $_POST['q1_s2'];
  $q1_s3 = $_POST['q1_s3'];
  $q1_s4 = $_POST['q1_s4'];
  $q1_s5 = $_POST['q1_s5'];
  $q2_s1 = $_POST['q2_s1'];
  $q2_s2 = $_POST['q2_s2'];
  $q2_s3 = $_POST['q2_s3'];
  $q2_s4 = $_POST['q2_s4'];
  $q2_s5 = $_POST['q2_s5'];
  $q3_s1 = $_POST['q3_s1'];
  $q3_s2 = $_POST['q3_s2'];
  $q3_s3 = $_POST['q3_s3'];
  $q3_s4 = $_POST['q3_s4'];
  $q4_comment = $_POST['q4_comment'];

  // รายละเอียดผู้ให้ข้อมูล
  $sql = "INSERT INTO customer(company_Name,customer_Name,customer_Position,customer_Telephone,customer_Email)
  VALUES ('$answer_company_Name','$answer_customer_Name','$answer_customer_Position','$answer_customer_Telephone','$answer_customer_Email');";
  // ข้อ 1
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
   VALUES(1,1,'$q1_s1','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
   VALUES(2,1,'$q1_s2','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
   VALUES(3,1,'$q1_s3','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
   VALUES(4,1,'$q1_s4','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
   VALUES(5,1,'$q1_s5','$answer_company_Name','$answer_customer_Email');";

  // ข้อ 2
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
VALUES(6,2,'$q2_s1','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
VALUES(7,2,'$q2_s2','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
VALUES(8,2,'$q2_s3','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
VALUES(9,2,'$q2_s4','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
VALUES(10,2,'$q2_s5','$answer_company_Name','$answer_customer_Email');";

  // ข้อ 3
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
VALUES(11,3,'$q3_s1','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
VALUES(12,3,'$q3_s2','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
VALUES(13,3,'$q3_s3','$answer_company_Name','$answer_customer_Email');";
  $sql .= "INSERT INTO answer(question_ID,groupQuestion_ID,rate_Answer,company_Name,customer_Email) 
VALUES(14,3,'$q3_s4','$answer_company_Name','$answer_customer_Email');";

  // comment
  $sql .= "INSERT INTO comment(comment,company_Name,customer_Email) 
VALUES('$q4_comment','$answer_company_Name','$answer_customer_Email');";


  if (mysqli_multi_query($conn, $sql) === TRUE) {
    echo ('1');
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
  $conn->close();
} else {
  echo ('0');
}
