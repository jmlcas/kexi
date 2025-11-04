#!/bin/bash

# Iniciar Kexi en segundo plano después de un breve delay
(sleep 10 && /usr/bin/kexi-3.2) &

# Ejecutar el comando original de Webtop
exec /init
