FROM amazon/aws-lambda-python:3.9
COPY rawproxy/lambda.py ${LAMBDA_TASK_ROOT}
RUN  pip3 install requests --target "${LAMBDA_TASK_ROOT}"
CMD [ "lambda.lambda_handler" ]
