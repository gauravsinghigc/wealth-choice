<form action="<?php echo CONTROLLER; ?>" method="POST">
    <?php FormPrimaryInputs(true); ?>
    <div class="col-md-12 mt-4">
        <div class="row">
            <div class="col-md-5 shadow-sm mr-2">
                <div class="row">
                    <div class="col-md-12 mt-1">
                        <h5 class="app-sub-heading"><i class="fa fa-user"></i> Primary Deatils</h5>
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="">Salutations </label>
                        <select name="AgricultureSalutation" class="form-control" id="">
                            <option value="Mr">Mr</option>
                            <option value="Mrs">Mrs</option>
                            <option value="Miss">Miss</option>
                            <option value="Ms">Ms</option>
                            <option value="Dr">Dr</option>
                            <option value="Prof">Prof</option>
                            <option value="Sir">Sir</option>
                        </select>
                    </div>
                    <div class='col-md-6 form-group'>
                        <label id="men">Person Name <span class="text-danger">*</span></label>
                        <input type="text" name="AgricultureCustomerName" class="form-control" placeholder="name">
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>Person Contact Number <span class="text-danger">*</span></label>
                        <input type="tel" name="AgricultureCustomerPhoneNumber" class="form-control" placeholder="phone" max="12">
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>Person Email Id </label>
                        <input type="email" name="AgricultureCustomeremailId" class="form-control " placeholder="email">
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>Lead Assigned To </label>
                        <select class="form-control" name="AgricultureLeadPersonManagedBy">
                            <?php
                            $Users = _DB_COMMAND_("SELECT * FROM users ORDER BY UserFullName ASC", true);
                            foreach ($Users as $User) {
                                if ($User->UserId == LOGIN_UserId) {
                                    $selected = "selected";
                                } else {
                                    $selected = "";
                                }
                                echo "<option value='" . $User->UserId . "' $selected>" . $User->UserFullName . " @ " . $User->UserPhoneNumber . "</option>";
                            }
                            ?>
                        </select>
                    </div>
                    <div class='col-md-6 form-group'>
                        <label> Lead Stages </label>
                        <select class="form-control" name="AgricultureLeadPersonStatus">
                            <?php CONFIG_VALUES("LEAD_STAGES"); ?>
                        </select>
                    </div>
                    <div class='col-md-6 form-group'>
                        <label> Lead Priority Level </label>
                        <select class="form-control" name="AgricultureLeadPriorityLevel">
                            <?php CONFIG_VALUES("LEAD_PERIORITY_LEVEL"); ?>
                        </select>
                    </div>
                    <div class="form-group col-md-6">
                        <label>Lead Source </label>
                        <select class="form-control" name="AgricultureLeadPersonSource">
                            <?php CONFIG_VALUES("LEAD_SOURCES"); ?>
                        </select>
                    </div>
                    <div class='col-md-12 form-group'>
                        <label>Person Address </label>
                        <textarea name="AgricultureCustomerAddress" class="form-control" placeholder=" Address "></textarea>
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>City</label>
                        <input type="text" name="AgricultureCity" class="form-control " placeholder="city">
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>State</label>
                        <input type="text" name="AgricultureState" class="form-control " placeholder="state">
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>Pincode</label>
                        <input type="nuber" name="AgriculturePincode" class="form-control " placeholder="pincode">
                    </div>
                </div>
            </div>
            <div class="col-md-6 shadow-sm ml-2">
                <div class="row">
                    <div class="col-md-12 mt-1">
                        <h5 class="app-sub-heading"><i class="fa fa-earth"></i> Land Deatils</h5>
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="">Land Size</label>
                        <input type="number" class="form-control" name="AgricultureAreaUnit" placeholder="land size">
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="Area">Land Unit Type</label>
                        <select name="AgricultureUnitType" id="" class="form-control">
                            <option value="">Select Unit Type</option>
                            <option value="Acres">Acres</option>
                            <option value="Sq. Yards">Sq. Yards</option>
                            <option value="Sq. Meter">Sq. Meter</option>
                            <option value="Sq. Foot">Sq. Foot </option>
                            <option value="Sq. Foot">Bigha</option>
                        </select>
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>Land Type </label>
                        <input type="text" name="AgricultureLandType" class="form-control " placeholder="land type">
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>Land Price </label>
                        <input type="number" name="AgricultureLandPrice" class="form-control " placeholder="land price">
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="Purchase Purpose"> Purpose </label>
                        <select name="AgriculturePurchasePurpose" id="" class="form-control">
                            <option value="">Select Purpose</option>
                            <option>Investment</option>
                            <option>Personal Use</option>
                        </select>
                    </div>
                    <div class="col-md-6 form-group">
                        <label for="">Loaction </label>
                        <input type="text" placeholder="location" name="AgricultureLoaction" class="form-control">
                    </div>
                    <div class="col-md-12 form-group mt-2">
                        <label for="RequiredPeriod">Nearest Facility </label>
                        <div class="shadow-sm">
                            <?php
                            $FetchAmities = _DB_COMMAND_(CONFIG_DATA_SQL("AGRICULTURE_AMITIES"), true);
                            if ($FetchAmities != null) {
                                foreach ($FetchAmities as $Amities) {
                                    echo '<label class="btn btn-default m-1"><input type="checkbox" name="AgricultureAmities[]" value=' . $Amities->ConfigValueId . '"> ' . $Amities->ConfigValueDetails . ' </label>';
                                }
                            } else {
                                NoData("No Agriculture Amities Found!!");
                            } ?>
                        </div>
                    </div>
                    <div class='col-md-12 form-group mt-2'>
                        <label>When you are going to purchase</label>
                        <div class="box-shadow mt-1">
                            <label class="btn btn-default m-1"> <input type="radio" name="AgriculturePurchaseDate" value="In 1 Month"> In 1 Month </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="AgriculturePurchaseDate" value="In 3 Month"> In 3 Month </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="AgriculturePurchaseDate" value="In 6 Month"> In 6 Month </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="AgriculturePurchaseDate" value="In 1 Year"> 1 Year </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="AgriculturePurchaseDate" value="In 2 Year"> 2 Year </label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row shadow-sm m-2 mb-10px pt-3">
                <div class="col-md-11">
                    <h5 class="app-sub-heading"><i class="fa fa-list"></i> Select Project Intrested In</h5>
                </div>
                <?php
                $Requirement = _DB_COMMAND_("SELECT * FROM projects", true);
                foreach ($Requirement as $List) {
                    $ProjectType = FETCH("SELECT * FROM config_values where ConfigValueId='" . $List->ProjectTypeId . "'", "ConfigValueDetails");
                    echo "
                  <div class='form-group col-md-4'>
                  <div class='form-check  form-check-inline'>
                  <input class='form-check-input checkbox-list mt-0' type='radio' name='AgricultureLeadRequirementDetails[]' value='" . $List->ProjectsId . "'>
                  <h6 class='form-check-label bold mb-0 fs-12'>" . $List->ProjectName . " - <i>$ProjectType</i></h6>
                  </div>
                  </div>";
                } ?>
            </div>
            <div class="form-group col-md-12 mt-2">
                <label>Add Note & Remarks <span class="text-danger">*</span></label>
                <textarea name="AgricultureRemark" class="form-control" rows="3"></textarea>
            </div>
            <div class="text-center col-md-12">
                <button type="submit" name="AgricultureLead" class="btn btn-dark m-1"><i class="fa fa-plus bold"></i> Add Agriculture Lead</button>
                <a href="index.php" class="btn btn-default">Cancel</a>
            </div>
        </div>
    </div>
</form>