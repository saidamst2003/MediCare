<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DoctorRV - Gestion des Rendez-vous</title>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  <style>
    body {
      background-color: #f5f8fa;
      min-height: 100vh;
      padding-bottom: 50px;
    }
    .navbar {
      border-bottom: 2px solid rgba(0, 123, 255, 0.85);
      margin-bottom: 30px;
    }
    .card {
      border-radius: 15px;
      box-shadow: 0 6px 10px rgba(0,0,0,0.1);
      margin-bottom: 25px;
    }
    .card-header {
      border-radius: 15px 15px 0 0 !important;
      background-color: #3498db;
      color: white;
      font-weight: bold;
      padding: 15px 20px;
    }

    .btn-success {
      background-color: #2ecc71;
      border: none;
    }
    .btn-danger {
      background-color: #e74c3c;
      border: none;
    }
    .appointment-card {
      border-left: 4px solid #3498db;
      margin-bottom: 15px;
      transition: transform 0.2s;
    }
    .appointment-card:hover {
      transform: translateY(-3px);
    }
    .appointment-pending {
      border-left-color: #f39c12;
    }
    .appointment-confirmed {
      border-left-color: #2ecc71;
    }
    .appointment-cancelled {
      border-left-color: #e74c3c;
      opacity: 0.7;
    }
    .status-badge {
      font-size: 0.8rem;
      padding: 5px 10px;
      border-radius: 12px;
    }
    .tab-content {
      padding-top: 20px;
    }
    .nav-pills .nav-link.active {
      background-color: #3498db;
    }
    .nav-pills .nav-link {
      color: #34495e;
      font-weight: 500;
    }
  </style>
</head>
<body>
<div class="container">
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
      <a class="navbar-brand" href="index.html">DoctorRV</a>
    </div>
  </nav>

  <div class="row">
    <div class="col-12">
      <h2 class="mb-4">Gestion de vos Rendez-vous</h2>

      <ul class="nav nav-pills mb-4" id="appointmentTabs" role="tablist">
        <li class="nav-item" role="presentation">
          <button class="nav-link active" id="new-appointment-tab" data-bs-toggle="pill" data-bs-target="#new-appointment" type="button" role="tab">
            <i class="fas fa-plus-circle"></i> Prendre un rendez-vous
          </button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="view-appointments-tab" data-bs-toggle="pill" data-bs-target="#view-appointments" type="button" role="tab">
            <i class="fas fa-list"></i> Mes rendez-vous
          </button>
        </li>
        <li class="nav-item" role="presentation">
          <button class="nav-link" id="cancel-appointment-tab" data-bs-toggle="pill" data-bs-target="#cancel-appointment" type="button" role="tab">
            <i class="fas fa-times-circle"></i> Annuler un rendez-vous
          </button>
        </li>
      </ul>

      <div class="tab-content" id="appointmentTabsContent">
        <!-- Prendre un rendez-vous -->
        <div class="tab-pane fade show active" id="new-appointment" role="tabpanel">
          <div class="card">
            <div class="card-header">
              <i class="fas fa-calendar-plus"></i> Nouveau Rendez-vous
            </div>
            <div class="card-body">
              <form id="newAppointmentForm">
                <div class="row">
                  <div class="col-md-6">
                    <div class="mb-3">
                      <label for="username" class="form-label">Nom d'utilisateur (unique)</label>
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
                    <div class="mb-3">
                      <label for="appointmentReason" class="form-label">Motif de visite</label>
                      <textarea class="form-control" id="appointmentReason" rows="3" required></textarea>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="mb-3">
                      <label for="appointmentDate" class="form-label">Date du Rendez-vous</label>
                      <input type="date" class="form-control" id="appointmentDate" required min="2025-02-20">
                    </div>
                    <div class="mb-3">
                      <label for="appointmentTime" class="form-label">Heure du Rendez-vous</label>
                      <select class="form-select" id="appointmentTime" required>
                        <option value="" selected disabled>Choisir une heure</option>
                        <option value="09:00">09:00</option>
                        <option value="09:30">09:30</option>
                        <option value="10:00">10:00</option>
                        <option value="10:30">10:30</option>
                        <option value="11:00">11:00</option>
                        <option value="11:30">11:30</option>
                        <option value="14:00">14:00</option>
                        <option value="14:30">14:30</option>
                        <option value="15:00">15:00</option>
                        <option value="15:30">15:30</option>
                        <option value="16:00">16:00</option>
                        <option value="16:30">16:30</option>
                      </select>
                    </div>
                    <div class="mb-3">
                      <label for="doctorSelect" class="form-label">Medecin</label>
                      <select class="form-select" id="doctorSelect" required>
                        <option value="" selected disabled>Choisir un medecin</option>
                        <option value="dr-zahrae">Dr. Dyani - Generaliste</option>
                        <option value="dr-hajar">Dr. zerhouni - Cardiologue</option>
                        <option value="dr-saida">Dr. mestoure - Dermatologue</option>
                        <option value="dr-mustapha">Dr. ouadad - Pediatre</option>
                      </select>
                    </div>
                    <div class="mt-4 pt-2">
                      <button type="submit" class="btn btn-success w-100">
                        <i class="fas fa-check-circle"></i> Confirmer le rendez-vous
                      </button>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>

        <!-- Consulter mes rendez-vous -->
        <div class="tab-pane fade" id="view-appointments" role="tabpanel">
          <div class="card">
            <div class="card-header">
              <i class="fas fa-list-alt"></i> Mes Rendez-vous
            </div>
            <div class="card-body">
              <div class="appointment-card card p-3 appointment-confirmed">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <h5 class="mb-1">Dr. zerhouni - Cardiologue</h5>
                    <p class="text-muted mb-1">
                      <i class="far fa-calendar-alt"></i> 25 Fevrier, 2025 - 10:30
                    </p>
                    <p class="mb-0"><small><i class="far fa-comment"></i> Controle annuel</small></p>
                  </div>
                  <div class="text-end">
                    <span class="badge bg-success status-badge mb-2">Confirme</span>
                    <br>
                    <button class="btn btn-sm btn-outline-danger mt-1">
                      <i class="fas fa-times"></i> Annuler
                    </button>
                  </div>
                </div>
              </div>

              <div class="appointment-card card p-3 appointment-pending">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <h5 class="mb-1">Dr. ouadad - Pediatre</h5>
                    <p class="text-muted mb-1">
                      <i class="far fa-calendar-alt"></i> 03 Mars, 2025 - 15:00
                    </p>
                    <p class="mb-0"><small><i class="far fa-comment"></i> Consultation pour fievre</small></p>
                  </div>
                  <div class="text-end">
                    <span class="badge bg-warning text-dark status-badge mb-2">En attente</span>
                    <br>
                    <button class="btn btn-sm btn-outline-danger mt-1">
                      <i class="fas fa-times"></i> Annuler
                    </button>
                  </div>
                </div>
              </div>

              <div class="appointment-card card p-3 appointment-cancelled">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <h5 class="mb-1">Dr. zerhouni - Generaliste</h5>
                    <p class="text-muted mb-1">
                      <i class="far fa-calendar-alt"></i> 15 Fevrier, 2025 - 09:00
                    </p>
                    <p class="mb-0"><small><i class="far fa-comment"></i> Prescription renouvellement</small></p>
                  </div>
                  <div class="text-end">
                    <span class="badge bg-danger status-badge">Annule</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>


<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script>
  document.addEventListener('DOMContentLoaded', function() {
    // Set minimum date to today
    const today = new Date().toISOString().split('T')[0];
    document.getElementById('appointmentDate').min = today;

    // New appointment form submission
    document.getElementById('newAppointmentForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const username = document.getElementById('username').value;
      const email = document.getElementById('email').value;
      const telephone = document.getElementById('telephone').value;
      const reason = document.getElementById('appointmentReason').value;
      const date = document.getElementById('appointmentDate').value;
      const time = document.getElementById('appointmentTime').value;
      const doctor = document.getElementById('doctorSelect').value;

      console.log('Nouveau rendez-vous:', {
        username, email, telephone, reason, date, time, doctor
      });

      alert('Votre rendez-vous a été enregistré avec succès!');
      this.reset();
    });

    // Cancel appointment form submission
    document.getElementById('cancelAppointmentForm').addEventListener('submit', function(e) {
      e.preventDefault();
      const appointmentId = document.getElementById('appointmentSelect').value;
      const reason = document.getElementById('cancellationReason').value;

      console.log('Annulation de rendez-vous:', { appointmentId, reason });

      alert('Votre rendez-vous a été annulé avec succès!');
      this.reset();
    });
  });
</script>
</body>
</html>
