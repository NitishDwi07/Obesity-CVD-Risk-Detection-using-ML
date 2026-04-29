FROM python:3.10-slim
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 10000
CMD ["gunicorn", "-b", "0.0.0.0:10000", "app:app"]