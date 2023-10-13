FROM node:latest
WORKDIR /svelte-frontend
RUN npm install -g pnpm
RUN npm i vite
COPY package*.json .
RUN pnpm i
COPY . .
EXPOSE 3000
EXPOSE 24678
ENTRYPOINT [ "pnpm", "dev" ]