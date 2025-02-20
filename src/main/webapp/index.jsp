<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DoctorRV - Portail Médical</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>

        body {
            background-color: #f5f8fa;
            height: 100vh;
        }
        .navbar {
            border-bottom: 2px solid rgba(0, 123, 255, 0.85);
        }
        .main-container {
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .welcome-text {
            text-align: center;
            margin-bottom: 50px;
            color: #2c3e50;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 6px 10px rgba(0,0,0,0.1);
            transition: transform 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card-header {
            border-radius: 15px 15px 0 0 !important;
            background-color: #3498db;
            color: white;
            font-weight: bold;
            text-align: center;
            padding: 20px;
        }
        .btn-primary {
            background-color: #3498db;
            border: none;
            padding: 12px 30px;
            font-weight: bold;
            width: 100%;
        }
        .btn-success {
            background-color: #2ecc71;
            border: none;
            padding: 12px 30px;
            font-weight: bold;
            width: 100%;
        }
    </style>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">DoctorRV</a>
    </nav>
</div>
<div class="container main-container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="welcome-text">
                <h1 class="display-4">Bienvenue sur DoctorRV</h1>
                <p class="lead">Votre plateforme de rendez-vous medicaux en ligne</p>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-4 mb-4">
            <div class="card">
                <div class="card-header">
                    Espace Medecin
                </div>
                <div class="card-body">
                    <p class="card-text">Accedez a votre espace personnel pour gerer vos rendez-vous et vos patients.</p>
                    <a href="patient.jsp" class="btn btn-success">Connexion Docteur</a>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card">
                <div class="card-header">
                    Espace Patient
                </div>
                <div class="card-body">
                    <p class="card-text">Prenez rendez-vous avec vos medecins et consultez votre historique medical.</p>
                    <a href="patient.jsp" class="btn btn-success"> Connexion Patient</a>

                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>