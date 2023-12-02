  <li class="nav-header">
    <span class="text-secondary">ADMIN MENUS</span>
  </li>

  <li class="nav-header">
    <span class="text-secondary">Digital</span>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/leads" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-star text-dark"></i>
      <p>
        All Leads
      </p>
    </a>
  </li>
  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/teams/" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-users text-dark"></i>
      <p>
        All Team
      </p>
    </a>
  </li>


  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/leads/transfer/" class="nav-link" id="teams">
      <i class="nav-icon fa fa-exchange text-dark"></i>
      <p>
        Move Leads
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/leads/uploads/" class="nav-link" id="teams">
      <i class="nav-icon fas fa-upload text-dark"></i>
      <p>
        Upload Leads
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/leads/uploaded/" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-list text-dark"></i>
      <p>
        Uploaded Leads
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/projects/" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-table text-dark"></i>
      <p>
        All Projects
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/compaigns/" class="nav-link" id="teams">
      <i class=" nav-icon fa fa-dashboard text-dark"></i>
      <p>
        Digital Campaigns
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/news/" class="nav-link" id="teams">
      <i class=" nav-icon fa fa-file text-dark"></i>
      <p>
        News Paper Campaigns
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/marketings/" class="nav-link" id="teams">
      <i class=" nav-icon fa fa-users text-dark"></i>
      <p>
        Marketing Collaterals
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/creatives/" class="nav-link" id="teams">
      <i class="nav-icon fa fa-image text-dark"></i>
      <p>
        All Creatives
      </p>
    </a>
  </li>
  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/reports/digital" class="nav-link" id="teams">
      <i class="nav-icon fa fa-file-pdf text-dark"></i>
      <p>
        Digital Reports
      </p>
    </a>
  </li>

  <li class="nav-header">
    <span class="text-secondary">CRM</span>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/customers" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-users text-dark"></i>
      <p>
        All Customers
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/registrations" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-book text-dark"></i>
      <p>
        All Registrations
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/bookings" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-star text-dark"></i>
      <p>
        All Bookings
      </p>
    </a>
  </li>



  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/payments" class="nav-link">
      <i class="nav-icon fas fa-exchange text-dark"></i>
      <p>
        All Payments
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/refunds" class="nav-link">
      <i class="nav-icon fas fa-stamp text-dark"></i>
      <p>
        All Refunds & Cancellations
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/reports/crm" class="nav-link">
      <i class="nav-icon fas fa-star text-dark"></i>
      <p>
        All Reports
      </p>
    </a>
  </li>

  <li class="nav-header">
    <span class="text-secondary">HR</span>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/users" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-users text-dark"></i>
      <p>
        All Users
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/attandance/" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-clock text-dark"></i>
      <p>
        User Attandance
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/payroll/" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-exchange text-dark"></i>
      <p>
        Teams Salary Months
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/policies/" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-stamp text-dark"></i>
      <p>
        Company Policies
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/users/birthdays" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-cake text-dark"></i>
      <p>
        Team Birthdays
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/ods" class="nav-link" id="teams">
      <i class="nav-icon fas fa-door-open text-dark"></i>
      <p>
        All OD Requests
      </p>
      <?php
      $CountOds = TOTAL("SELECT * FROM od_forms where ODFormStatus='NEW'");
      if ($CountOds != 0) {
      ?>
        <span class="counter blink-data"><?php echo $CountOds; ?></span>
      <?php
      } ?>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/leaves" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-calendar text-dark"></i>
      <p>
        All Leaves
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/holidays" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-calendar-day text-dark"></i>
      <p>
        Holiday Calendar
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/rewards" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-medal text-dark"></i>
      <p>
        All Rewards
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/appraisals" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-glass-martini text-dark"></i>
      <p>
        All Appraisals
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/pips" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-hourglass-half text-dark"></i>
      <p>
        All PIPs
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/quotes" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-quote-left text-dark"></i>
      <p>
        Daily Quotes
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/expanses" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-exchange text-dark"></i>
      <p>
        All Expanses
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/assets/" class="nav-link">
      <i class="nav-icon fas fa-table text-dark"></i>
      <p>
        All Assets
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/training/" class="nav-link">
      <i class="nav-icon fas fa-video text-dark"></i>
      <p>
        All Trainings
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/circulars" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-circle-notch text-dark"></i>
      <p>
        All Circulars
      </p>
      <?php
      $TotalCirculars = TOTAL("SELECT * FROM circulars");
      $Readed = TOTAL("SELECT * FROM circular_status where CircularMainUserId='" . LOGIN_UserId . "'");
      $Balance = $TotalCirculars - $Readed;
      if ($Balance != 0) { ?>
        <span class="counter blink-data">
          <?php echo $TotalCirculars - $Readed; ?>
        </span>
      <?php } ?>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/trainings" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-video text-dark"></i>
      <p>
        All Trainings
      </p>
      <?php
      $CountTrainings = TOTAL("SELECT * FROM training_members, trainings where training_members.TrainingMainId=trainings.TrainingId and TrainingStatus='NEW' and TrainingUserId='" . LOGIN_UserId . "'");
      if ($CountTrainings != 0) { ?>
        <span class="counter blink-data"><?php echo $CountTrainings; ?></span>
      <?php
      } ?>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/reports/hr" class="nav-link">
      <i class="nav-icon fas fa-file-pdf text-dark"></i>
      <p>
        HR Reports
      </p>
    </a>
  </li>


  <li class="nav-header">
    <span class="text-secondary">Team/Digital/Admin/Common</span>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/leads" class="nav-link">
      <i class="nav-icon fas fa-star text-dark"></i>
      <p>
        All Leads
      </p>
    </a>
  </li>
  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/teams/" class="nav-link">
      <i class="nav-icon fas fa-users text-dark"></i>
      <p>
        My Team
      </p>
    </a>
  </li>


  <li class="nav-header">
    <span class="text-secondary">Receptions</span>
  </li>
  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/visitors/" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-users text-dark"></i>
      <p>
        All Visitors
      </p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/visitors/courier/" class="nav-link" id="teams">
      <i class=" nav-icon fas fa-truck text-dark"></i>
      <p>
        All Courier
      </p>
    </a>
  </li>

  <li class="nav-header">
    <span class="text-secondary">Admin</span>
  </li>


  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/settings/" class="nav-link">
      <i class="nav-icon fas fa-gear text-dark"></i>
      <p>
        All Settings
      </p>
    </a>
  </li>
  <li class="nav-item">
    <a href="<?php echo APP_URL; ?>/activities/" class="nav-link">
      <i class="nav-icon fas fa-list text-dark"></i>
      <p>
        Activity & Login Logs
      </p>
    </a>
  </li>

  <li class="nav-header">
    <span class="text-secondary">Common</span>
  </li>