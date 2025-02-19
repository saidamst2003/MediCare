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
<div class="container main-container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="welcome-text">
                <h1 class="display-4">Bienvenue sur DoctorRV</h1>
                <p class="lead">Votre plateforme de rendez-vous médicaux en ligne</p class="lead">
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-4 mb-4">
            <div class="card">
                <div class="card-header">
                    Espace Médecin
                </div>
                <div class="card-body">
                    <p class="card-text">Accédez à votre espace personnel pour gérer vos rendez-vous et vos patients.</p>
                    <button class="btn btn-primary mt-3">Connexion Docteur</button>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card">
                <div class="card-header">
                    Espace Patient
                </div>
                <div class="card-body">
                    <p class="card-text">Prenez rendez-vous avec vos médecins et consultez votre historique médical.</p>
                    <button class="btn btn-success mt-3">Connexion Patient</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>