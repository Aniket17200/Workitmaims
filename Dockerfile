# ---------- 1️⃣ base image ----------
FROM node:18-alpine          # lts-alpine3.21 also works

# ---------- 2️⃣ set work directory ----------
WORKDIR /app

# ---------- 3️⃣ copy package descriptors & install deps ----------
COPY package.json ./
RUN npm install
# ---------- 4️⃣ copy the rest of the source ----------
COPY . .

# ---------- 5️⃣ expose CRA dev server port ----------
EXPOSE 3000

# ---------- 6️⃣ start the dev server ----------
CMD ["npm","start"]
