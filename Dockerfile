FROM nginx:alpine

RUN apk add --no-cache git

WORKDIR /app

RUN git clone https://huggingface.co/spaces/tritueviet/subforge-ai-webgpu .

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 7860

CMD ["nginx", "-g", "daemon off;"]