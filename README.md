<<<<<<< HEAD
![CI/CD Workflow](https://github.com/bonaventuresimeon/student-progress-tracker2/actions/workflows/ci-cd.yml/badge.svg)

=======
>>>>>>> 0b0e8c6 (Add AWS EC2 deploy workflow)
# Student-Project-Tracker Web APP
A simple FastAPI web application for registering students and tracking their weekly progress during the Cloud Native Series.

### Key Features:
- Register new students (generates a unique ID).
- Track weekly progress for each student.
- All students use one central MongoDB (hosted on MongoDB Atlas or similar).
- Simple endpoints for registration, status check, and progress update.

## 📦 Prerequisites
- Python 3.10+
- Git
- MongoDB Atlas account (to get your connection string)

---

## 💻 Local Development Setup

### 1. Clone the Repository
```bash
<<<<<<< HEAD
git clone https://github.com/chisomjude/student-project-tracker.git
cd student-project-tracker
=======
git clone https://github.com/IKUKU1010/Progress-Tracker-App.git
cd Progress-Tracker-App
>>>>>>> 0b0e8c6 (Add AWS EC2 deploy workflow)
```

### 2. Create Virtual Environment & Install Dependencies
```bash
python3 -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate
pip install -r requirements.txt
```

### 3.Db Conenctions
- navigate to app/main and update vault ip :

<<<<<<< HEAD
```export VAULT_ADDR=
   export VAULT_TOKEN=
```

### 4. Run the Application Locally
=======
```
   export VAULT_ADDR=
   export VAULT_ROLE_ID=
   export VAULT_SECRET_ID=
   
```

### 4. Check Vault Health

```bash
curl http://44.204.193.107:8200/v1/sys/health
```

### 5. Run the Application Locally
>>>>>>> 0b0e8c6 (Add AWS EC2 deploy workflow)
```bash
uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
```
Visit `http://vmip:8000` to see your app in action.

---

## 🐳 Docker Instructions

### 1. Build Docker Image
```bash
<<<<<<< HEAD
docker build -t student-tracker .
=======
docker build -t student-tracker:latest .
>>>>>>> 0b0e8c6 (Add AWS EC2 deploy workflow)
```

### 2. Run Docker Container
```bash
<<<<<<< HEAD
docker run --env-file .env -p 8000:8000 student-tracker
=======
docker run -d -p 8000:8000 -e VAULT_ADDR -e VAULT_ROLE_ID  -e VAULT_SECRET_ID student-tracker:latest
>>>>>>> 0b0e8c6 (Add AWS EC2 deploy workflow)
```

### 3. Push to Docker Hub
Ensure you're logged in:
```bash
docker login
```
Tag and push your image:
```bash
docker tag student-tracker your-dockerhub-username/student-tracker

docker push your-dockerhub-username/student-tracker
```

---

## 📬 API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
<<<<<<< HEAD
| POST   | `/register?name=YourName` | Register new student |
| GET    | `/status/{student_id}`    | View registration and progress |
=======
| POST   | `/register?name=YourName` | Register a new student |
| GET    | `/status/{student_id}`    | View registration and progress of students |
>>>>>>> 0b0e8c6 (Add AWS EC2 deploy workflow)
| POST   | `/update/{student_id}?week=week1` | Update progress by week |

---

## 🌐 Deploying to Cloud (Optional)
You can deploy the app on platforms like:
- Render
- Railway
- Fly.io
- Azure App Service
- Elastic Beanstalk or more


## 👩🏽‍💻 Built for the Cloud Native Series by Chisom
This project is used for learning cloud-native tools and Handson-Project.

Feel free to fork and extend it!
<<<<<<< HEAD

# Student Progress Tracker

![CI/CD](https://github.com/bonaventuresimeon/student-progress-tracker2/actions/workflows/ci-cd.yml/badge.svg)

A FastAPI web app to register and track student progress.
=======
>>>>>>> 0b0e8c6 (Add AWS EC2 deploy workflow)
