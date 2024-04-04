FROM lkldvknflknldkbnlfknldkfbnlkfb
USER jboss
RUN sed -i -E 's/<distributed-cache name="sessions" owners="1"\\/>/<replicated-cache name="sessions"\\/>/g' /opt/eap/standalone/configuration/standalone-openshift.xml
RUN sed -i -E 's/<distributed-cache name="authenticationSessions" owners="1"\\/>/<replicated-cache name="authenticationSessions"\\/>/g' /opt/eap/standalone/configuration/standalone-openshift.xml
RUN sed -i -E 's/<distributed-cache name="offlineSessions" owners="1"\\/>/<replicated-cache name="offlineSessions"\\/>/g' /opt/eap/standalone/configuration/standalone-openshift.xml
RUN sed -i -E 's/<distributed-cache name="clientSessions" owners="1"\\/>/<replicated-cache name="clientSessions"\\/>/g' /opt/eap/standalone/configuration/standalone-openshift.xml
RUN sed -i -E 's/<distributed-cache name="offlineClientSessions" owners="1"\\/>/<replicated-cache name="offlineClientSessions"\\/>/g' /opt/eap/standalone/configuration/standalone-openshift.xml
RUN sed -i -E 's/<distributed-cache name="loginFailures" owners="1"\\/>/<replicated-cache name="loginFailures"\\/>/g' /opt/eap/standalone/configuration/standalone-openshift.xml
COPY ./bsi-sso-defaul-flow.jar ./bsi-sso-logout-provider.jar ./bsi-sso-phone-pin-provider.jar ./bsi-sso-phone-password-provider.jar ./bsi-sso-user-provider.jar ./bsi-sso-token-provider.jar /deployments/
