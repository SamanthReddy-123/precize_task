FROM python:3.8-slim
WORKDIR /app
COPY requirements.txt  /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt


COPY . .
CMD ["python","generate_reports.py"]


