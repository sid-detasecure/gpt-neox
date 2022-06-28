cd ..
python3 tools/preprocess_data.py --input ./data/hindi-aggregated/c4-hindi-cleaned --output-prefix ./data/tokenized-data --vocab ./data/gpt2-vocab.json --merge-file gpt2-merges.txt --dataset-impl mmap --tokenizer-type GPT2BPETokenizer --append-eod --workers 16 && python3 ./deepy.py train.py -d configs small.yml local_setup.yml
echo "Done :)"