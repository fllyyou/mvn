pipeline {
    agent any

    stages {

        stage ("main - 拉取代码") {
            steps {
                echo "main - 拉取成功"
            }
        }

        stage ("main - 执行构建 - 部署") {
            steps {
                echo "main - 构建完成"
            }
        }

        post {
            success {
                echo "main - 部署成功"
            }
        }

    }
}