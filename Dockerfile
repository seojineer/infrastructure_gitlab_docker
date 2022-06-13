FROM gitlab/gitlab-ce:latest

# Install subgit
RUN mkdir -p /subgit
RUN cd /subgit && wget https://subgit.com/files/subgit_3.3.14_all.deb --no-check-certificate && dpkg -i subgit_3.3.14_all.deb && apt-get install -f

RUN apt-get update && apt-get install openjdk-8-jdk -y
#RUN mkdir -p /usr/lib/jdk && cd /usr/lib/jdk/ \
#&& wget https://github.com/ojdkbuild/contrib_jdk8u-ci/releases/download/jdk8u312-b07/jdk-8u312-ojdkbuild-linux-x64.zip \
#&& unzip jdk-8u312-ojdkbuild-linux-x64.zip
