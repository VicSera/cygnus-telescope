:: Create a new production build
call ng build --prod

:: Relace old image with newly created one
call docker image rm vicsera/cygnus:telescope
call docker buildx build --platform linux/arm/v7 -t vicsera/cygnus:telescope .
call docker push vicsera/cygnus:telescope
