


deploy: 
	# aws cloudformation create-stack \
    # --template-body file://networkInfrastructure.yaml \
    # --stack-name udacity-devops-p2-base \
	# --capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND CAPABILITY_NAMED_IAM \
	# --profile udacity \
	# --region us-east-1 \
	# --parameters file://networkParameters.json
	
	aws cloudformation create-stack \
    --template-body file://serverInfrastructure.yaml  \
    --stack-name udacity-devops-p2-dep \
	--capabilities CAPABILITY_IAM CAPABILITY_AUTO_EXPAND CAPABILITY_NAMED_IAM \
	--profile udacity \
	--region us-east-1 \
	--parameters file://serverParameters.json

delete:

	aws cloudformation delete-stack\
	 --stack-name udacity-devops-p2-base \
	 --profile udacity \
	  --region us-east-1 \

	# 	
	aws cloudformation delete-stack\
	 --stack-name udacity-devops-p2-dep \
	 --profile udacity \
	  --region us-east-1 \