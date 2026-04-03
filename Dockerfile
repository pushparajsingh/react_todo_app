# Node 20 use karo
FROM node:20-alpine

# Working directory
WORKDIR /app

# Package files copy karo
COPY package*.json ./

# Dependencies install karo
RUN npm install

# Saara code copy karo
COPY . .

# App build karo
RUN npm run build

# Port expose karo
EXPOSE 4173

# App start karo
CMD ["npm", "run", "preview", "--", "--host", "0.0.0.0"]