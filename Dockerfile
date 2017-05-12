pas encore
FROM sameersbn/gitlab:9.1.3
RUN apt-get update && apt-get -y install patch
RUN wget https://raw.githubusercontent.com/sameersbn/docker-gitlab/master/docker-compose.yml \
  && wget -O ~/app_ja.patch https://raw.githubusercontent.com/ksoichiro/gitlab-i18n-patch/master/patches/v8.11.2/app_ja.patch \
  && patch -p1 < ~/app_ja.patch \
  && rm app_ja.patch
