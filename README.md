This repository is about running gitlab with docker.

1. Create volume directory
$ mkdir -p {gitlab_dir}/config
$ mkdir -p {gitlab_dir}/logs
$ mkdir -p {gitlab_dir}/data

2. Run Gitlab docker
$ docker-compose up -d

3. Login root account on gitlab 
$ docker exec -it gitlab /bin/bash
root@gitlab:/# cat /etc/gitlab/initial_root_password
...

Password: {Initial password of root account}

...

You can login with info(root/{initial password}) on http://localhost:4000.

4. Change password of root
You can change password on gitlab setting pages.
