# Sử dụng Node.js phiên bản 20 trên nền Alpine để tạo image nhẹ
FROM node:20-alpine

# Thiết lập thư mục làm việc
WORKDIR /app

# Sao chép tất cả các file cần thiết vào thư mục làm việc trong container
COPY . .

# Cài đặt các dependencies nếu có trong package.json
RUN npm install

# Thiết lập entrypoint để nhận lệnh từ bên ngoài
ENTRYPOINT ["node", "tls.js"]
