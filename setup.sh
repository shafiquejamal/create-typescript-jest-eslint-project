# https://sharvishi9118.medium.com/setting-up-typescript-eslint-jest-project-3621a6d43609
echo "Creating NPM Project..."
rm -rf node_modules package.json package-lock.json package.json-original package.json-temp
npm init -y
echo "Installing dev dependencies..."
npm install --save-dev eslint @eslint/js @types/eslint__js typescript typescript-eslint prettier eslint-config-prettier jest @types/jest ts-jest eslint-plugin-jest ts-node 
rm -f eslint.config.mjs jest.config.ts
echo "Copying over config files..."

for file in use_this-*
	do echo "  Copying over file:$file..." 
	NEW_NAME=$(echo $file | sed -e 's/use_this-//') 
	echo $NEW_NAME
	cp $file $NEW_NAME
done

echo "Updating package.json 'script' entries..."
jq '.scripts."lint-fix"="eslint --fix ."' package.json | \
	jq '.scripts.start="node dist/index.js"' | \
	jq '.scripts.build="tsc --build"' | \
	jq '.scripts.clean="tsc --build --clean"' | \
	jq '.scripts.lint="eslint ."' | \
	jq '.scripts.format="prettier --write \"src/**/*.ts\" \"tests/**/*.ts\""' | \
	jq '.scripts.test="jest --silent --coverage"' | \
	jq '.scripts."test:watch"="jest --watch"' > package.json-temp
mv package.json package.json-original && mv package.json-temp package.json
echo "Done. Please delete all of the use_this* files, and reset the git repository:\n\n  rm use_this-*\n\n  rm -rf .git\n\n  git init"



