test:
	py.test --cov=mousestyles --pyargs mousestyles

clean:
	find . -name "*.so" -o -name "*.pyc" -o -name "*.pyx.md5" | xargs rm -f
	find . -name "__pycache__" -o -name ".cache" | xargs rm -rf
	rm -rf build dist mousestyles.egg-info

style:
	py.test --pep8 --flakes mousestyles

