FROM : node:lts-alpine3.21
COPY : ..
RUN npm install
Expose 3000
CMD ["node","app.js"]
