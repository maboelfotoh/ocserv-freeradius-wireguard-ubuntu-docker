FROM ubuntu:20.04

# Install packages
RUN apt-get update && \
 apt-get install -y --no-install-recommends wireguard-tools iptables nano net-tools procps openresolv \
                                            ocserv freeradius && \
 apt-get clean

# Add main work dir to PATH
WORKDIR /scripts
ENV PATH="/scripts:${PATH}"

# Use iptables masquerade NAT rule
ENV IPTABLES_MASQ=1

# Copy scripts to containers
COPY install-module /scripts
COPY run /scripts
COPY genkeys /scripts
RUN chmod 755 /scripts/*

# Normal behavior is just to run wireguard with existing configs
CMD ["run"]
