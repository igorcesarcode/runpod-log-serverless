FROM python:3.10-slim

WORKDIR /

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy your handler file
COPY rp_handler.py /

# Start the container
CMD ["python3", "-u", "rp_handler.py"]