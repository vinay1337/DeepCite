source v-env/bin/activate
cd v-env/lib/python3.7/site-packages
zip -r9 ${OLDPWD}/function.zip .
cd $OLDPWD
zip -g function.zip app.py create_response.py lambda_config.py database_calls.py
aws lambda update-function-code --function-name deepcite --zip-file fileb://function.zip