<?php

    $payload = json_decode(file_get_contents('php://input'));
    $payload->ref;

    shell_exec(./provision.sh);

?>
