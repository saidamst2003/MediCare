<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DoctorRV - Espace Médecin</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f5f8fa;
            padding: 20px;
        }
        .navbar {
            border-bottom: 2px solid rgba(0, 123, 255, 0.85);
            margin-bottom: 30px;
        }
        .appointment-card {
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        .appointment-header {
            background-color: #3498db;
            color: white;
            padding: 15px;
            border-radius: 10px 10px 0 0;
        }
        .btn-modify {
            background-color: #f39c12;
            border: none;
        }
        .btn-cancel {
            background-color: #e74c3c;
            border: none;
        }
        .section-title {
            color: #2c3e50;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid #3498db;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <a class="navbar-brand" href="#">DoctorRV</a>

    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-12">
            <h2 class="section-title">Mes Rendez-vous a venir</h2>
        </div>
    </div>

    <!-- Liste des rendez-vous -->
    <div class="row">
        <div class="col-md-12">
            <!-- Example appointment card -->
            <div class="card appointment-card">
                <div class="appointment-header">
                    <h5 class="mb-0">Rendez-vous du 21 Fe vrier 2025</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <p><strong>Patient:</strong> Jean Dupont</p>
                            <p><strong>Heure:</strong> 09:30</p>
                        </div>
                        <div class="col-md-4">
                            <p><strong>Type:</strong> Consultation generale</p>
                            <p><strong>Durée:</strong> 30 minutes</p>
                        </div>
                        <div class="col-md-4 text-end">
                            <button class="btn btn-modify text-white me-2">Reporter</button>
                            <button class="btn btn-cancel text-white">Annuler</button>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Another appointment card -->
            <div class="card appointment-card">
                <div class="appointment-header">
                    <h5 class="mb-0">Rendez-vous du 21 Fevrier 2025</h5>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <p><strong>Patient:</strong> Marie Martin</p>
                            <p><strong>Heure:</strong> 10:30</p>
                        </div>
                        <div class="col-md-4">
                            <p><strong>Type:</strong> Suivi medical</p>
                            <p><strong>Durée:</strong> 45 minutes</p>
                        </div>
                        <div class="col-md-4 text-end">
                            <button class="btn btn-modify text-white me-2">Reporter</button>
                            <button class="btn btn-cancel text-white">Annuler</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>