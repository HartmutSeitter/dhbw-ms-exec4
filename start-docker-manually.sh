cd posts 
docker build -t hsposts-img .
cd ../comments 
docker build  -t hscomments-img .
cd ../eventbus
docker build -t hseventbus-img .
cd ../moderation 
docker build -t hsmoderation-img .
cd ../query
docker build -t hsquery-img .
cd ..
docker image ls
#docker run --network hsbridge  --name hs-comments-ctr -p 4001:4001 -d hscomments-img
#docker run --network hsbridge  --name hs-eventbus-ctr -d hseventbus-img
#docker run --network hsbridge  --name hs-post-ctr -p 4000:4000 -d hsposts-img
#docker run --network hsbridge  --name hs-comments-ctr -d hscomments-img
#docker run --network hsbridge  --name hs-query-ctr -p 4002:4002 -d hsquery-img
#docker run --network hsbridge  --name hs-moderation-ctr -d hsmoderation-img

docker run --network hsbridge --hostname hs-comments --name hs-comments-ctr -p 4001:4001 -d hscomments-img
docker run --network hsbridge --hostname hs-eventbus --name hs-eventbus-ctr -d hseventbus-img
docker run --network hsbridge --hostname hs-post --name hs-post-ctr -p 4000:4000 -d hsposts-img
docker run --network hsbridge --hostname hs-comments --name hs-comments-ctr -d hscomments-img
docker run --network hsbridge --hostname hs-query --name hs-query-ctr -p 4002:4002 -d hsquery-img
docker run --network hsbridge --hostname hs-moderation --name hs-moderation-ctr -d hsmoderation-img

docker ps