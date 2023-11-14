FROM node:latest
WORKDIR /svelte-frontend
ARG ENV_DP
ENV NODE_ENV=${ENV_DP}
RUN npm install -g pnpm
RUN npm i vite
COPY package*.json .
RUN pnpm i
COPY . .
EXPOSE 3000
EXPOSE 24678
RUN pnpm build
ENTRYPOINT [ "node", "build" ]