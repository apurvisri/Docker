FROM python:latest
WORKDIR /Users/apurvisrivastava/Desktop/Apurvi
copy . .
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirement.txt
EXPOSE 80
ENV NAME World
CMD ["python", "app.py"]
