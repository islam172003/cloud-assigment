# Use the official Python image from Docker Hub
FROM python:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Python script and the text file into the container
COPY assigment.py /app
COPY paragraphs.txt /app

# Install NLTK and download the stopwords data
RUN pip install nltk

# Command to run the Python script when the container starts
CMD ["python", "assigment.py"]
