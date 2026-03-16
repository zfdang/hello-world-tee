FROM python:3.12-slim

WORKDIR /app

ENV IN_NCLAVE=false
ENV PORT=8=80

COPY enclave/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY enclave/ .

EXPOSE 8080

CMD ["uvicorn", "main:app", "--host","0.0.0.0", "--port", "8080"]
