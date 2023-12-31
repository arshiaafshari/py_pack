# Stage 1: Build stage
FROM python:3.9-slim as builder

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Stage 2: Final stage
FROM python:3.9-alpine

WORKDIR /app

COPY --from=builder /app .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]