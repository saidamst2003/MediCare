<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DoctorRV - Connexion Patient</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f5f8fa;
      height: 100vh;
    }
    .navbar {
      border-bottom: 2px solid rgba(0, 123, 255, 0.85);
    }
    .card {
      max-width: 500px;
      margin: 80px auto;
      border-radius: 15px;
      box-shadow: 0 6px 10px rgba(0,0,0,0.1);
    }
    .card-header {
      border-radius: 15px 15px 0 0 !important;
      background-color: #2ecc71;
      color: white;
      font-weight: bold;
      text-align: center;
      padding: 20px;
    }
    .btn-success {
      background-color: #2ecc71;
      border: none;
      padding: 12px 30px;
      font-weight: bold;
    }
    .btn-secondary {
      border: none;
      padding: 12px 30px;
      font-weight: bold;
    }
  </style>
</head>
<body>
<div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.html">DoctorRV</a>
  </nav>
</div>

<div class="container">
  <div class="card">
    <div class="card-header">
      Connexion Patient
    </div>
    <div class="card-body">
      <form id="patientForm">
        <div class="mb-3">
          <label for="username" class="form-label">Nom d'utilisateur</label>
          <input type="text" class="form-control" id="username" required>
        </div>
        <div class="mb-3">
          <label for="email" class="form-label">Email</label>
          <input type="email" class="form-control" id="email" required>
        </div>
        <div class="mb-3">
          <label for="telephone" class="form-label">Telephone</label>
          <input type="tel" class="form-control" id="telephone" required>
        </div>
        <div class="d-grid gap-2">
          <button type="submit" class="btn btn-success">Connexion</button>
          <a href="index.html" class="d-grid">
            <button type="button" class="btn btn-secondary mt-2">Retour</button>
          </a>
        </div>
      </form>
    </div>
  </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', function() {
    // Form submission
    document.getElementById('patientForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const username = document.getElementById('username').value;
      const email = document.getElementById('email').value;
      const telephone = document.getElementById('telephone').value;

      console.log('Form submitted:', { username, email, telephone });
      // Add your form processing logic here
      alert('Formulaire soumis avec succès!');
    });
  });
</script>
</body>
</html>