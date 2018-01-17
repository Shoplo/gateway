<?php

if (!isset($_SERVER['HTTP_AUTH']) || $_SERVER['HTTP_AUTH'] !== "pass")
{
	header('HTTP/1.0 403 Forbidden');
}

header("auth-test", "test");
