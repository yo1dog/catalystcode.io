aws s3 sync ./ s3://catalystcode.io/ \
  --exclude '*' \
  --include 'index.html' \
  --include 'favicon*' \
  --include 'logo*' \
  --cache-control max-age=604800 \
  --metadata-directive REPLACE \
  --delete \
  $@

AWS_PAGER="" aws cloudfront create-invalidation \
  --distribution-id E2FVN06WF0XDRV \
  --paths '/' '/*' \
  $@
