FROM python:3.10.0
RUN apt-get update && apt-get install -y pkg-config
WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r ./requirements.txt
COPY ./skill.py .env ./classes.py .
CMD ["python", "./skill.py", "./.env"]