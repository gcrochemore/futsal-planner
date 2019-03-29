docker-compose build
docker-compose up -d
docker-compose run futsal-planner-front rake db:create
docker-compose run futsal-planner-front rake db:migrate