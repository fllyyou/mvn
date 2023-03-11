pipeline {
    agent any

    stages {

        stage ("test - 拉取代码") {
            steps {
                echo "test - 拉取成功"
            }
        }

        stage ("test - 执行构建 - 部署") {
            steps {
                echo "test - 构建完成"
            }

            post {
                success {
                    echo "test - 部署成功"
                }
            }
        }

    }
}