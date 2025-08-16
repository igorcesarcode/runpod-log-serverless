FROM python:3.10-slim

WORKDIR /

# Copy requirements first
COPY requirements.txt /

# Install dependencies
RUN pip install -r requirements.txt --no-cache-dir

# Copy your handler file
COPY rp_handler.py /

# Start the container
CMD ["python3", "-u", "rp_handler.py"]