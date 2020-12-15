--As account admin
CREATE or replace STORAGE INTEGRATION s3_int
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = S3
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::026614366959:role/mysnowflakerole'
  STORAGE_ALLOWED_LOCATIONS = ('s3://s3convex', 's3://s3convex/test');
  
