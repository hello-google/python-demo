# 使用官方的 Python 运行时镜像
FROM python:3.6.8-slim

# 设置工作目录
WORKDIR /app

# 将当前目录的文件复制到容器的 /app 目录
COPY . /app

# 安装项目依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露应用运行的端口（假设应用运行在 8080 端口，如果不同，请修改）
EXPOSE 8000

# 运行 Python 应用
CMD ["python3", "app.py"]
