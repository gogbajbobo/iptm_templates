<?php

$ids=file_get_contents('php://input');

if (isset($ids)) {

    $ids = json_decode($ids);
    $ids = array_map('intval', $ids);
    $ids_string = implode(',', $ids);

    // request db for emails by userIds
    // select `email` from `users` where `id` in ($ids_string)

    // js expect an json string of object like this: { '1': 'user1@example.com', '2': 'user2@example.com' }

    $result = array();
    foreach ($ids as $id) $result[$id] = 'user' . $id . '@example.com'; // generate fake emails just for test

    $result = json_encode($result); 
    echo $result;

}

?>
