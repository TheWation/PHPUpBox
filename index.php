<!DOCTYPE html>
<html>
<head>
    <title>Wation File Uploader</title>
</head>
<body>
    <form action="" method="post" enctype="multipart/form-data">
        <input type="file" name="file" />
        <input type="submit" value="Upload" />
    </form>
</body>
</html>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $disallowed_ext = array('php', 'php3', 'php4', 'php5', 'phtml', 'pl', 'py', 'cgi');

    if ($_FILES['file']['error'] === UPLOAD_ERR_OK) {
        $file_name = $_FILES['file']['name'];
        $file_size = $_FILES['file']['size'];
        $file_tmp = $_FILES['file']['tmp_name'];
        $file_ext = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));

        if (in_array($file_ext, $disallowed_ext)) {
            die('Disallowed file extension.');
        }

        // Additional security checks can be added here, such as checking the file size or performing virus scanning.

        move_uploaded_file($file_tmp, 'uploads/' . $file_name);
        echo 'File uploaded successfully.';
    } else if ($_FILES['file']['error'] !== UPLOAD_ERR_NO_FILE) {
        die('File upload failed.');
    }
}
?>