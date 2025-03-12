# Dockerfile
FROM golang:1.23-alpine

# Outils utiles (git, bash, etc.)
RUN apk add --no-cache git bash curl

# Installer Air pour le hot-reload
RUN go install github.com/cosmtrek/air@v1.45.0

# Définir le répertoire de travail
WORKDIR /app

# Copier les sources et installer les dépendances
COPY go.mod go.sum ./
RUN go mod download

# Exposer le port de l'application (ex : 8080)
EXPOSE 8448

# Commande par défaut : lancer Air pour surveiller les changements
CMD ["air", "-c", ".air.toml"]