# Gunakan image Golang official sebagai base image
FROM golang:latest

# Mengatur working directory di dalam kontainer
WORKDIR /app

# Menyalin kode aplikasi ke dalam kontainer
COPY . .

# Menggunakan go mod untuk mendownload dan mengelola dependensi
RUN go mod download

# Build aplikasi
RUN go build -o main .

# Menjalankan aplikasi saat kontainer dimulai
CMD ["./main"]
