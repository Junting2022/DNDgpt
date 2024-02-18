git add .
git commit -m "update"
git push
docker build -t justinussuri/dndgpt:latest .
docker push justinussuri/dndgpt:latest