# AWS Node.js DevOps Project

This project sets up a **scalable, secure Node.js application** on AWS using:

- Node.js & Express
- Docker
- Terraform (VPC, ALB, EC2, RDS, ECR, IAM, ACM)
- CI/CD with GitHub Actions

## Project Structure
```
[Your folder structure here]
```

## Usage

### Local
```
cd app
npm install
npm start
```

### Docker
```
docker build -t aws-nodejs-devops-project ./app
docker run -p 3000:3000 aws-nodejs-devops-project
```

### CI/CD
Push to `main` branch triggers:
1. Node.js build & test
2. Docker build & push to ECR
3. Terraform deploy to AWS