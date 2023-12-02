  <li class="nav-header">
    <span class="text-secondary">HR MENUS</span>
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
        Team Salary Months
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
    <a href="<?php echo APP_URL; ?>/payroll/reports" class="nav-link">
      <i class="nav-icon fas fa-file-pdf text-dark"></i>
      <p>
        Payroll Reports
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