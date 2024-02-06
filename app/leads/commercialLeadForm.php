<form action=" <?php echo CONTROLLER; ?>" method="POST">
    <?php FormPrimaryInputs(true); ?>
    <div class="col-md-12 mt-4">
        <div class="row">
            <div class="col-md-7 shadow-sm m-1 mr-2">
                <div class="row">
                    <div class="col-md-12 mt-1">
                        <h5 class="app-sub-heading"><i class="fa fa-user"></i> Primary Deatils</h5>
                    </div>
                    <div class="col-md-4 form-group">
                        <label for="">Salutations </label>
                        <select name="CommercialSalutation" class="form-control" id="">
                            <option value="Mr">Mr</option>
                            <option value="Mrs">Mrs</option>
                            <option value="Miss">Miss</option>
                            <option value="Ms">Ms</option>
                            <option value="Dr">Dr</option>
                            <option value="Prof">Prof</option>
                            <option value="Sir">Sir</option>
                        </select>
                    </div>
                    <div class="col-md-4 form-group">
                        <label>Customer Name <span class="text-danger">*</span> </label>
                        <input type="text" name="CommercialCustomerName" class="form-control" placeholder="name" required="">
                    </div>
                    <div class="col-md-4 form-group">
                        <label>Customer Phone <span class="text-danger">*</span> </label>
                        <input type="tel" name="CommercialCustomerPhoneNumber" class="form-control" placeholder="phone" required="">
                    </div>
                    <div class="col-md-6 form-group">
                        <label>Customer EmailId </label>
                        <input type="email" name="CommercialCustomeremailId" class="form-control" placeholder="email">
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>Lead Assigned To </label>
                        <select class="form-control" name="CommercialLeadPersonManagedBy">
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
                    <div class='col-md-4 form-group'>
                        <label> Lead Stages </label>
                        <select class="form-control" name="CommercialLeadPersonStatus">
                            <?php CONFIG_VALUES("LEAD_STAGES"); ?>
                        </select>
                    </div>
                    <div class='col-md-4 form-group'>
                        <label> Lead Priority Level </label>
                        <select class="form-control" name="CommercialLeadPriorityLevel">
                            <?php CONFIG_VALUES("LEAD_PERIORITY_LEVEL"); ?>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Lead Source </label>
                        <select class="form-control" name="CommercialLeadPersonSource">
                            <?php CONFIG_VALUES("LEAD_SOURCES"); ?>
                        </select>
                    </div>
                    <div class="col-md-12 form-group">
                        <label>Customer Address </label>
                        <textarea name="CommercialCustomerAddress" class="form-control" placeholder="Customer Address "></textarea>
                    </div>
                    <div class="col-md-4 form-group">
                        <label>City </label>
                        <input type="text" name="CommercialCity" class="form-control" placeholder="city">
                    </div>
                    <div class="col-md-4 form-group">
                        <label>State </label>
                        <input type="text" name="CommercialState" class="form-control" placeholder="state">
                    </div>
                    <div class="col-md-4 form-group">
                        <label>Pincode </label>
                        <input type="number" name="CommercialPincode" class="form-control" placeholder="pincode">
                    </div>
                </div>
            </div>
            <div class="col-md-4 shadow-sm m-1 ml-2">
                <div class="row">
                    <div class="col-md-12 mt-1">
                        <h5 class="app-sub-heading"><i class="fa fa-credit-card"></i> Budget Range</h5>
                    </div>
                    <div id="slider-container" class="col-md-12">
                        <div class="col-md-12 text-center p-3">
                            <div id="slider" class=""></div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <label for="min-value">Min Value:</label>
                                <input type="number" name="CommercialMinimumPrice" id="min-value" class="form-control">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="max-value">Max Value:</label>
                                <input type="number" name="CommercialMaximumPrice" id="max-value" class="form-control">
                            </div>
                        </div>
                        <div class="col-md-12 mt-3">
                            <p class="text-italic"><i class="fa fa-info rounded shadow-sm"></i> <i>You can set the
                                    budget according to your requiremnet.</i></p>
                        </div>
                        <div class="col-md-12 mt-2 form-group">
                            <label for="">Land Size</label>
                            <input type="number" class="form-control" name="CommercialAreaUnit" placeholder="land size">
                        </div>
                        <div class="col-md-12 mt-2 form-group">
                            <label for="Area">Land Unit Type</label>
                            <select name="CommercialUnitType" id="" class="form-control">
                                <option value="" selected>Select Type</option>
                                <option value="Sq. Yards">Sq. Yards</option>
                                <option value="Sq. Meter">Sq. Meter</option>
                                <option value="Sq. Foot">Sq. Foot </option>

                            </select>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-7 shadow-sm mr-2 m-1 mt-3">
                <div class="row">
                    <div class="col-md-12 mt-1">
                        <h5 class="app-sub-heading"><i class="fa fa-home"></i> Property Deatils</h5>
                    </div>
                    <div class="col-md-6 form-group mt-2">
                        <label for="">Cabin</label>
                        <select name="CommercialCabin" id="" class="form-control">
                            <option value="">Select Number Of Cabins</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                        </select>
                    </div>
                    <div class="col-md-6 form-group mt-2">
                        <label for="">Siting</label>
                        <select name="CommercialSiting" id="" class="form-control">
                            <option value="">Select Number Of Sitings</option>
                            <option value="0-15">0-15</option>
                            <option value="15-30">15-30</option>
                            <option value="30-45">30-45</option>
                            <option value="45-60">45-60</option>
                            <option value="60-75">60-75</option>
                            <option value="75-90">75-90</option>
                            <option value="90-100">90-100</option>
                        </select>
                    </div>
                    <div class='col-md-6 form-group mt-2'>
                        <label>Furnished Type </label>
                        <select class="form-control" name="CommercialPropertyFurnished">
                            <option value="">Select type of Furnished</option>
                            <option value="Semi Furnished">Semi Furnished</option>
                            <option value="Fully Furnished">Fully Furnished</option>
                            <option value="Partially Furnished">Partially Furnished</option>
                        </select>
                    </div>
                    <div class='col-md-6 form-group mt-2'>
                        <label>Purpose</label>
                        <select class="form-control" name="CommercialPurchasePurpose" onchange="SelectedValueForRent(this);" name="commercialPropertyDetails">
                            <option value="">Select Purpose</option>
                            <option value="BUY">Buy</option>
                            <option value="RENT">Rent</option>
                            <option value="SELL">Sell</option>
                        </select>
                    </div>
                    <div class='col-md-6 form-group mt-2 hidden' id="SelectValueForRent">
                        <div>
                            <label>Payment Plan </label>
                            <select class="form-control" name="CommercialRentDetails">
                                <option value="" selected>Select Rent details</option>
                                <option value="1 Month Rent + 2 Month Security">1 Month Rent + 2 Month Security</option>
                                <option value="1 Month Rent + 1 Month Security">1 Month Rent + 1 Month Security</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 form-group mt-2">
                        <label for="Reception">Reception</label>
                        <div class="shadow-sm d-flex align-items-center">
                            <label class="btn btn-default m-1 "> <input type="radio" name="CommercialReception" value="Free Space"> Free Space
                            </label>
                            <label class="btn btn-default m-1"><input type="radio" name="CommercialReception" value="Separate"> Separate </label>
                        </div>
                    </div>
                    <div class='col-md-6 form-group mt-2'>
                        <label>Night Shift </label>
                        <div class="shadow-sm  d-flex align-items-center">
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialNightShift" value="Yes"> Yes </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialNightShift" value="No"> No </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialNightShift" value="Optional">Optional </label>
                        </div>
                    </div>
                    <div class='col-md-6 form-group mt-2'>
                        <label>Panetry </label>
                        <div class="shadow-sm">
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialPanetry" value="Yes"> Yes</label>
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialPanetry" value="No"> No</label>
                        </div>
                    </div>
                    <div class='col-md-6 form-group mt-2'>
                        <label>Location </label>
                        <input type="text" name="CommercialLoaction" class="form-control" placeholder="loaction">
                    </div>
                </div>
            </div>
            <div class="col-md-4 shadow-sm ml-2 m-1 mt-3">
                <div class="row">
                    <div class="col-md-12 mt-1">
                        <h5 class="app-sub-heading"><i class="fa fa-list"></i> Other </h5>
                    </div>
                    <div class='col-md-12 form-group mt-2'>
                        <label>Other Ameties </label>
                        <div class="shadow-sm">
                            <?php
                            $FetchAmities = _DB_COMMAND_(CONFIG_DATA_SQL("COMMERCIAL_AMITIES"), true);
                            if ($FetchAmities != null) {
                                foreach ($FetchAmities as $Amities) {
                                    echo '<label class="btn btn-default m-1"><input type="checkbox" name="CommercialAmities[]" value=' . $Amities->ConfigValueId . '> ' . $Amities->ConfigValueDetails . ' </label>';
                                }
                            } else {
                                NoData("No Commercial Amities Found!!");
                            } ?>
                        </div>
                    </div>
                    <div class='col-md-12 form-group mt-2'>
                        <label>Washroom </label>
                        <div class="box-shadow mt-1">
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialWashroom" value="Seperate"> Seperate
                            </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialWashroom" value="Shared"> Shared </label>
                        </div>
                    </div>
                    <div class='col-md-12 form-group mt-2'>
                        <label>When you are going to purchase </label>
                        <div class="box-shadow mt-1">
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialPurchaseDate" value="In 1 Month"> In 1 Month </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialPurchaseDate" value="In 3 Month"> In 3 Month </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialPurchaseDate" value="In 6 Month"> In 6 Month </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialPurchaseDate" value="In 1 Year"> 1 Year </label>
                            <label class="btn btn-default m-1"> <input type="radio" name="CommercialPurchaseDate" value="In 2 Year"> 2 Year </label>
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
                  <input class='form-check-input checkbox-list mt-0' type='radio' name='CommercialLeadRequirementDetails[]' value='" . $List->ProjectsId . "'>
                  <h6 class='form-check-label bold mb-0 fs-12'>" . $List->ProjectName . " - <i>$ProjectType</i></h6>
                  </div>
                  </div>";
                } ?>
            </div>
            <div class="form-group col-md-12 mt-2">
                <label>Add Note & Remarks <span class="text-danger">*</span></label>
                <textarea name="CommercialRemark" required="" class="form-control" rows="3"></textarea>
            </div>
            <div class="text-center col-md-12">
                <button type="submit" name="CommercialLead" class="btn btn-dark m-1"><i class="fa fa-plus bold"></i>
                    Add Commercial Lead</button>
                <a href="index.php" class="btn btn-default">Cancel</a>
            </div>
        </div>
    </div>
</form>