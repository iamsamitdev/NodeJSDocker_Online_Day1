# นำ Image ที่มาจาก Docker Hub มาใช้งาน
FROM node:18.20-alpine

# กำหนดตำแหน่งของโฟลเดอร์ใน Container
WORKDIR /usr/app

# คัดลอกไฟล์ package.json และ package-lock.json ไปยังโฟลเดอร์ใน Container
COPY package*.json ./

# ติดตั้ง Dependencies จากไฟล์ package.json
RUN npm install

# คัดลอกไฟล์ทั้งหมดไปยังโฟลเดอร์ใน Container
COPY . .

# ระบุ Port ที่จะใช้งาน
EXPOSE 3000

# คำสั่งที่ใช้ในการรัน Container
CMD ["node", "app.js"]