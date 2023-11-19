<?php
// whether the user logged in is a manager of employee
if (!isset($_GET['role']) || ($_GET['role'] !== 'Manager' && $_GET['role'] !== 'Staff')) {
    echo 'filed to log in';
    exit();
}

$type = $_GET['role'];

if ($type === 'manager') {
    include('manager_profile.html');
} elseif ($type === 'staff') {
    include('staff_profile.html');
}

?>