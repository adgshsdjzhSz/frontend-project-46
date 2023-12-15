install:
	npm ci

publish:
	npm publish --dry-run

gendiff:
	node bin/gendiff.js

g:
	git add .
	git commit -m "$m"
	git push

lint:
	npx eslint .

test:
	NODE_OPTIONS=--experimental-vm-modules npx jest

test-coverage:
	npx jest --coverage

fix:
	npx eslint --fix .