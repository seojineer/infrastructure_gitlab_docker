FROM gitlab/gitlab-ce:latest

# Install subgit
RUN mkdir -p /subgit
RUN cd /subgit && wget https://subgit.com/files/subgit_3.3.14_all.deb && dpkg -i subgit_3.3.14_all.deb && apt-get install -f

RUN mkdir -p /usr/lib/jdk && cd /usr/lib/jdk/ \
	&& wget https://github.com/ojdkbuild/contrib_jdk8u-ci/releases/download/jdk8u312-b07/jdk-8u312-ojdkbuild-linux-x64.zip \
	&& unzip jdk-8u312-ojdkbuild-linux-x64.zip
RUN echo "\
export J2SDKDIR=/usr/lib/jdk/jdk-8u312-ojdkbuild-linux-x64\n\
export J2REDIR=/usr/lib/jdk/jdk-8u312-ojdkbuild-linux-x64/jre\n\
export PATH=$PATH:/usr/lib/jdk/jdk-8u312-ojdkbuild-linux-x64/bin:/usr/lib/jdk/jdk1.8.0_311/db/bin:/usr/lib/jdk/jdk-8u312-ojdkbuild-linux-x64/jre/bin\n\
export JAVA_HOME=/usr/lib/jdk/jdk-8u312-ojdkbuild-linux-x64\n\
export DERBY_HOME=/usr/lib/jdk/jdk-8u312-ojdkbuild-linux-x64/db\
" >> /etc/environment
