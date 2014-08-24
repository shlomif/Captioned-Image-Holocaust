all:

upload:
	rsync -a --progress -v --inplace *.jpg *.svg *.png $$__HOMEPAGE_REMOTE_PATH/temp-holocaust-did-not-happen-f43mJyt7Kvl/
