<?php
session_start();
include("functions.php");
check_session_id();
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>お手伝いリスト（入力画面）</title>
</head>

<body>
  <form action="todo_create.php" method="POST">
    <fieldset>
      <legend>お手伝いリスト（入力画面）</legend>
      <a href="todo_read.php">一覧画面</a>
      <a href="todo_logout.php">ログアウト</a>
      <div>
        お手伝いすること: <input type="text" name="todo">
      </div>
      <div>
        いつまでに: <input type="date" name="deadline">
      </div>
      <div>
        <button>入力完了</button>
      </div>
    </fieldset>
  </form>

</body>

</html>