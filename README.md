# PHPUpBox

PHPUpBox is a project that demonstrates file upload security issues in PHP applications. It provides a simple PHP file uploader script that allows users to upload files to a server. However, the script is vulnerable to various security issues, such as file type validation, file size validation, and file name validation.

## Installation

To use PHPUpBox, you can simply pull the Docker image from Docker Hub:

For PHP v8:

```bash
docker pull thewation/phpupbox
```

For PHP v5:

```bash
docker pull thewation/phpupbox5
```

## Usage

To start the PHPUpBox container, run the following command:

```bash
docker run -p 80000:80 thewation/phpupbox5
```

This will start the container and map port 80 on the host machine to port 80 in the container.

To access the PHP file uploader script, open a web browser and navigate to `http://127.0.0.1:8000`. You should see a simple form that allows you to upload a file.

Try uploading various files to the server and observe the behavior of the script. You may find that certain file types or sizes are rejected, or that the script allows you to upload files with malicious content.

## Security Considerations

PHPUpBox is intended for educational purposes only and should not be used in production environments. The script is intentionally vulnerable to various security issues and should not be used as-is in any application.

If you plan to use PHP file uploads in your application, be sure to implement appropriate security measures, such as file type validation, file size validation, and file name validation. You should also consider using a third-party library or service to handle file uploads, as these often provide additional security features and safeguards.

Additionally, be sure to keep your software and server up-to-date with the latest security patches and updates, and follow best practices for server and application security.