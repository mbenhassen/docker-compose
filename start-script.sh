#!/bin/bash
service mysql start
service apache2 start
tail -f /dev/null  # Empêche le conteneur de s'arrêter
