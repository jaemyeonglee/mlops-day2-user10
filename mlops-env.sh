export LAB_PREFIX=user10   # change me!

export AWS_REGION=ap-northeast-2
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET=${LAB_PREFIX}-${ACCOUNT_ID}-${AWS_REGION}-mlops
export S3_DATA=s3://${BUCKET}/data
export S3_ARTIFACTS=s3://${BUCKET}/artifacts

# Staging area for code bundles we upload for SageMaker jobs
export S3_CODE="s3://${BUCKET}/${LAB_PREFIX}/code"

# Standardized data sub-prefixes
export S3_DATA_RAW="${S3_DATA}/raw"
export S3_DATA_PROCESSED="${S3_DATA}/processed"

# Artifacts from jobs
export S3_ART_PREPROCESS="${S3_ARTIFACTS}/preprocess"
export S3_ART_TRAIN="${S3_ARTIFACTS}/training"
