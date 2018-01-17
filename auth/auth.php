<?php

if (isset($_SERVER['HTTP_TEST_BLOCK']))
{
	header('HTTP/1.0 403 Forbidden');
}

header("auth-test", "test");
