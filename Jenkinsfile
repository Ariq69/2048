pipeline {
    // job akan dijalankan pada agent devops1-ariq
    agent {
        node {
            label 'devops1-ariq'
        }
    }

    // proses sdlc
    stages {
        // proses build apps
        stage('Build Apps') {
            steps {
                // echo 'Build Apps'
                sh 'npm install'
            }
        }
        stage('Build images') {
            steps {
                // echo 'Build images'
                sh 'docker compose build'
            }
        }
        stage('Deploy Apps') {
            steps {
                // echo 'Deploy Apps'
                sh 'docker compose up -d'
            }
        }
        stage('Publish image') {
            steps {
                // echo 'Publish image'
                sh 'docker compose push'
            }
        }
    }
}