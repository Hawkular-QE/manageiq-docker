# Description
A variation of ManageIQ docker image with support for cfme_tests 
- add sshd and admin user
- expose port 22 (ssh) and 5432 (postgres server)

# Usage
```
# Get pre-built image uploaded by HawkularQE
# docker pull hawkularqe/manageiq:latest

# Launch MiQ with ssh :222 and postgres :5432
# docker run --privileged -di -p 222:22 -p 5432:5432 -p 80:80 -p 443:443 hawlularqe/manageiq
```
