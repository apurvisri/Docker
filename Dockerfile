FROM python:latest
WORKDIR /Users/apurvisrivastava/.jenkins/workspace/docker-build-image
copy . .
RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirement.txt
EXPOSE 80
ENV NAME World
CMD ["python", "app.py"]
