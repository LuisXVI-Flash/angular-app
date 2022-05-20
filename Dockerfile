FROM node:16
WORKDIR /app
COPY . .
RUN npm install -g @angular/cli
RUN npm install
RUN npm run build --prod
CMD ng serve --host 0.0.0.0