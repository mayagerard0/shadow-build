FROM clojure

RUN apt update


# RUN apt install nodejs -y
# RUN apt install npm -y

RUN apt install curl -y
RUN curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh

RUN apt install nodejs -y
RUN npm install -g yarn

RUN yarn global add shadow-cljs
