FROM python:3.6
LABEL maintainer="bharadwajrani68@gmail.com"
COPY . /python_rest
WORKDIR /python_rest
RUN pip install -r requirements.txt
EXPOSE 3134
ENTRYPOINT ["python"]
CMD ["python_rest/rest.py"]