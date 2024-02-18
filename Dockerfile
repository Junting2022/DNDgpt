# 使用官方Python镜像作为基础镜像
FROM python:3.11.5


# 设置工作目录
WORKDIR /app
# 复制项目文件到容器内
COPY src /app/

# 安装项目依赖
RUN pip install -r requirements.txt

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "mysite.wsgi:application"]

