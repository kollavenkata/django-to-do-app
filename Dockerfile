# Use a Python base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy your project files into the container
COPY . /app

# Create a virtual environment and activate it
#RUN python -m venv env
#RUN /bin/bash -c "source env/bin/activate"

# Install dependencies from requirements.txt
RUN pip install -r requirements.txt

# Command to run when the container starts
CMD ["python", "manage.py", "runserver"]
