# snitsig-pingvin-mongodb
Mongodb service running in a simple compute instance


## Installation
As always make sure you've switched to the correct project before executing.
Run the following gcloud command for the Installation

```bash
gcloud compute instances create mongodb --region=$REGION --machine-type=e2-medium \
  --tags=mongo --image-project=debian-cloud \
  --image-family=debian-10 \
  --metadata-from-file=startup-script=$(dirname $0)/mongo-install.sh
```
