aws s3 sync ./ s3://catalystcode.io/ \
  --exclude '*' \
  --include 'index.html' \
  --include 'favicon*' \
  --cache-control max-age=604800 \
  --metadata-directive REPLACE \
  --delete \
  $@