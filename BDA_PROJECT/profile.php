<?php
// whether the user logged in is a manager of employee
if (!isset($_GET['type']) || ($_GET['type'] !== 'manager' && $_GET['type'] !== 'staff')) {
    echo 'filed to log in';
    exit();
}

$type = $_GET['type'];

if ($type === 'manager') {
    include('manager_profile.html');
} elseif ($type === 'staff') {
    include('staff_profile.html');
}

?>