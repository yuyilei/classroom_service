# base image
FROM python:2.7
MAINTAINER muxistudio <muxistudio@qq.com>
# environment setting
ENV DEPLOY_PATH /classroom_api
# run command in container
RUN mkdir -p $DEPLOY_PATH
WORKDIR $DEPLOY_PATH
# first add requirements.txt to container
Add requirements.txt requirements.txt
Add classroom_table.xls classroom_table.xls
# install
RUN pip install --index-url http://pypi.doubanio.com/simple/ -r requirements.txt --trusted-host=pypi.doubanio.com
# add all !
Add . .
