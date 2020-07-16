<?php
// var_dump($_GET);
// exit();

include("functions.php");
$user_id = $_GET['user_id'];
$todo_id = $_GET['todo_id'];

$pdo = connect_to_db();

$sql = 'SELECT COUNT(*) FROM like_table WHERE user_id=:user_id AND todo_id=:todo_id';
// $sql = 'INSERT INTO like_table(id,user_id,todo_id,created_at)
// VALUES(NULL,:user_id,:todo_id,sysdate())';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':user_id', $user_id, PDO::PARAM_INT);
$stmt->bindValue(':todo_id', $todo_id, PDO::PARAM_INT);
$status = $stmt->execute();

if ($status == false) {
    // エラー処理
} else {

    $like_count = $stmt->fetch();
    // var_dump($like_count[0]);
    // exit();

    if ($like_count[0] != 0) {
        $sql =
            'DELETE FROM like_table WHERE user_id=:user_id AND todo_id=:todo_id';
    } else {
        $sql = 'INSERT INTO like_table(id,user_id,todo_id,created_at)
        VALUES(NULL,:user_id,:todo_id,sysdate())';
    }
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':user_id', $user_id, PDO::PARAM_INT);
    $stmt->bindValue(':todo_id', $todo_id, PDO::PARAM_INT);
    $status = $stmt->execute();
    header('Location:todo_read.php');
}
