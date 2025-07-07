# Temel imaj
FROM node:20-alpine

# Çalışma dizini
WORKDIR /app

# package.json kopyala
COPY package*.json ./

# Bağımlılıkları yükle
RUN npm install

# Kodun geri kalanını kopyala
COPY . .

# Uygulamayı başlat
CMD ["node", "index.js"]

# Dışa açık port
EXPOSE 3000
