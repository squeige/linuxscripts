echo "switching to main branch"
git checkout main

echo "building app..."

bun run build

echo "deploying files to server..."

scp -P 55199 -r build/* USER@SERVER:/home/squeige/docker/nginx/data/html
