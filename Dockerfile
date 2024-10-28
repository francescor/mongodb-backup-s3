FROM mongo:5.0

# Install Python and Cron
RUN apt-get update && apt-get -y install awscli cron

ENV CRON_TIME="0 3 * * *" \
  TZ=Europe/Moscow \
  CRON_TZ=Europe/Moscow

ADD run.sh /run.sh
CMD /run.sh
