mkdir ../data
echo "Downloading support files"
wget https://s3.amazonaws.com/models.huggingface.co/bert/gpt2-merges.txt -P ../data
wget https://s3.amazonaws.com/models.huggingface.co/bert/gpt2-vocab.json -P ../data
echo "Downloading training data"
git clone https://huggingface.co/datasets/pfin123/hindi-aggregated ../data/hindi-aggregated
( cd ../data/hindi-aggregated/ && git lfs pull --include "c4-hindi-cleaned/*")
# cd ../data/hindi-aggregated/
cd ..
echo "Making Output Directory"
mkdir tokenized-data

