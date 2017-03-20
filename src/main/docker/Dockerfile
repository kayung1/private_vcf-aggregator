FROM vcf/vcf-common:2.2.0-SNAPSHOT

ARG app_name
ARG project_version

LABEL com.pluribus.vcf.app.name=$app_name

# Install Kibana
RUN tar -xzf /tmp/${KIBANA_NAME}.tar.gz -C /tmp/ && \
    mv /tmp/${KIBANA_NAME} /opt/kibana-flow
    
 RUN mkdir -p /opt/vcf-aggregator

# Install Kibana resources
COPY resources/kibana-flow.yml /opt/kibana-flow/config/kibana.yml

# Copy Supervisor resources
COPY resources/supervisord_vcf.conf /etc/supervisor/conf.d/

# Install Aggregator
COPY maven/jar/aggregator.jar /opt/vcf-aggregator/

# Port to expose
EXPOSE 5603