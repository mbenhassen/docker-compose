# Utilise une image Ubuntu comme base
FROM ubuntu:22.04

# Installe les dépendances nécessaires
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        apache2 \
        mysql-server \
        php \
        libapache2-mod-php \
        php-mysql \
        php-cli \
        curl \
        && apt-get clean

# Démarre MySQL et Apache
COPY start-script.sh /root/
RUN chmod +x /root/start-script.sh

# Ports exposés
EXPOSE 80

# Démarrage des services
CMD ["/root/start-script.sh"]
