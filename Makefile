.PHONY: docs upload-docs 

git: 
	git add . 
	git commit -m "$(m)"
	git push origin master
upload-docs: docs
	cd docs
	./upload
docs:
	doxygen
install: 
	cp tester.h /usr/local/include
remove:
	rm /usr/local/include/tester.h
