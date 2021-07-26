
#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static
cp sample-app.py tempdir/.

echo "From python ">> tempdir/Dockerfile
echo "RUN pip3 install flask ">>tempdir/Dockerfile

echo "COPY ./static /home/Tatbegi/static/">>tempdir/Dockerfile
echo "COPY ./templates /home/Tatbegi/templates/">>tempdir/Dockerfile
echo "COPY sample-app.py /home/Tatbegi/">>tempdir/Dockerfile
echo "EXPOSE 8080">>tempdir/Dockerfile
echo "CMD python3 /home/Tatbegi/sample-app.py">>tempdir/Dockerfile
