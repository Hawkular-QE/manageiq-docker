# Description
A variation of [ManageIQ Docker](https://hub.docker.com/r/manageiq/manageiq/) image with support for cfme_tests 
- add sshd and admin user
- expose port 22 (ssh) and 5432 (postgres server)

# Usage
```
# Launch MiQ with ssh on port 222 and postgres on port 5432
# docker run --privileged -di -p 222:22 -p 5432:5432 -p 80:80 -p 443:443 hawkularqe/manageiq-test
```
