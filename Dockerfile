FROM choodur/logstash

ADD logstash-dashboard.conf /opt/logstash/logstash-dashboard.conf
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 5228
EXPOSE 5229

VOLUME ['/var/log/system_logs']

CMD supervisord -n
