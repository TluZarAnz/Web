<?php
$r = htmlspecialchars($_GET['r']);
$x = htmlspecialchars($_GET['x']);
$y = htmlspecialchars($_GET['y']);

function validate($x, $y, $r) {
    if (is_numeric($r) && $r >= 1 && $r <= 4 && is_numeric($x) && in_array($x, array(-3, -2, -1, 0, 1, 2, 3, 4, 5)) && is_numeric($y) && $y >= -5 && $y <= 3) {
        return true;
    } else return false;
}

function check($x, $y, $r)
{
    if (($x >= 0 && $x <= ($r/2) && $y >= 0 && $y <= $r) ||
        ($x <= 0 && $y <= 0 && $y <= $x + $r / 2) ||
        (($x * $x + $y * $y) <= $r * $r  && $x <= 0 && $y >= 0)) {
        return "<span style='color: green'>Попал</span>";
    } return "<span style='color: red'>Мимо</span>";
}

session_start();

date_default_timezone_set('Europe/Moscow');
$currentTime = date("H:i:s");
$start = microtime(true);
$res = check ($x, $y, $r);
$time = microtime(true) - $start;
$result = array($x, $y, $r, $res, $currentTime, $time);

if (!isset($_SESSION['history'])) {
    $_SESSION['history'] = array();
}

if (!validate($x, $y, $r)) {
    ?>

    <?php
}else {
    array_push($_SESSION['history'], $result);
}

include "table.php";

?>