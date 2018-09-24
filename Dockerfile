FROM jboss/wildfly:11.0.0.Final

ENV PORT=9090 TZ="America/Recife" LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8"

# REQUIRED ENVS:
# DATABASE_USER
# DATABASE_PASSWORD
# DATABASE_NAME
# POSTGRES_URI
# DATASOURCE_NAME

ADD custom /opt/jboss/wildfly/customization/
EXPOSE $PORT

CMD ["/opt/jboss/wildfly/customization/execute.sh"]
