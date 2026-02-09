# Sử dụng Ubuntu 22.04
FROM ubuntu:22.04

# Cập nhật và cài đặt Python3 (để làm web server) và Git/Curl (để bạn dùng)
RUN apt-get update && apt-get install -y \
    python3 \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Tạo thư mục làm việc
WORKDIR /app

# Tạo một file index.html đơn giản để hiển thị khi truy cập
RUN echo "Hello! Ubuntu container is running." > index.html

# Mở cổng 8080
EXPOSE 8080

# Lệnh chạy server Python ở cổng 8080
CMD ["python3", "-m", "http.server", "8080"]
