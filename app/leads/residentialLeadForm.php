<form action=" <?php echo CONTROLLER; ?>" method="POST">
    <?php FormPrimaryInputs(true); ?>

    <div class="col-md-12 mt-4">
        <div class="row">
            <div class="col-md-7 shadow-sm">
                <div class="row">
                    <div class="col-md-12 mt-1">
                        <h5 class="app-sub-heading"><i class="fa fa-user"></i> Primary Deatils</h5>
                    </div>
                    <div class="col-md-4 form-group">
                        <label for="">Salutations </label>
                        <select name="ResidentialSalutation" class="form-control" id="">
                            <option value="Mr">Mr</option>
                            <option value="Mrs">Mrs</option>
                            <option value="Miss">Miss</option>
                            <option value="Ms">Ms</option>
                            <option value="Dr">Dr</option>
                            <option value="Prof">Prof</option>
                            <option value="Sir">Sir</option>
                        </select>
                    </div>
                    <div class='col-md-4 form-group'>
                        <label id="men">Person Name <span class="text-danger">*</span> </label>
                        <input type="text" name="ResidentialCustomerName" class="form-control" placeholder="name" required="">
                    </div>
                    <div class='col-md-4 form-group'>
                        <label>Person Contact Number <span class="text-danger">*</span></label>
                        <input type="tel" name="ResidentialCustomerPhoneNumber" class="form-control" placeholder="phone" required="" max="12">
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>Person Email Id </label>
                        <input type="email" name="ResidentialCustomeremailId" class="form-control " placeholder="email">
                    </div>
                    <div class='col-md-6 form-group'>
                        <label>Lead Assigned To </label>
                        <select class="form-control" name="ResidentialLeadPersonManagedBy">
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
                        <select class="form-control" name="ResidentialLeadPersonStatus">
                            <?php CONFIG_VALUES("LEAD_STAGES"); ?>
                        </select>
                    </div>
                    <div class='col-md-4 form-group'>
                        <label> Lead Priority Level </label>
                        <select class="form-control" name="ResidentialLeadPriorityLevel">
                            <?php CONFIG_VALUES("LEAD_PERIORITY_LEVEL"); ?>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Lead Source </label>
                        <select class="form-control" name="ResidentialLeadPersonSource">
                            <?php CONFIG_VALUES("LEAD_SOURCES"); ?>
                        </select>
                    </div>
                    <div class='col-md-12 form-group'>
                        <label>Person Address </label>
                        <textarea name="ResidentialCustomerAddress" class="form-control" placeholder="Customer Address "></textarea>
                    </div>
                    <div class='col-md-4 form-group'>
                        <label>City </label>
                        <input type="text" name="ResidentialCity" class="form-control " placeholder="city">
                    </div>
                    <div class='col-md-4 form-group'>
                        <label>State </label>
                        <input type="text" name="ResidentialState" class="form-control " placeholder="state">
                    </div>
                    <div class='col-md-4 form-group'>
                        <label>Pincode </label>
                        <input type="number" name="ResidentialPincode" class="form-control " placeholder="pincode">
                    </div>
                </div>
            </div>
            <div class="col-md-5 shadow-sm">
                <div class="row">
                    <div class="col-md-12 mt-1">
                        <h5 class="app-sub-heading"><i class="fa fa-home"></i> Property Deatils</h5>
                    </div>
                    <div class='col-md-12 form-group'>
                        <label>Property Type: </label>
                        <select class="form-control" id="propertyType" name="ResidentialPropertyType" onclick="getProperty()" name="ResidentialPropertyDetails">
                            <option value="">Select Property Type</option>
                            <option value="PLOT">Plot</option>
                            <option value="FLAT">Flat</option>
                            <option value="VILLA">Villa</option>
                            <option value="KOTHI">Kothi</option>
                            <option value="FARMHOUSE">FarmHouse</option>
                        </select>
                    </div>
                    <div class="col-md-12 mt-5 text-center">
                        <div class="card bg-black">
                            <p id="PropertyName" class="fs-50 bold text-light"></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Plot Area Star Here:  -->
            <div class="row w-100 mt-4" id="paymenetPlan" style="display: none; ">
                <div class="row p-3">
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h3 class='app-sub-heading '><i class="fa fa-braille"></i> Plot Deatils</h3>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Area In Unit </label>
                                <input type="number" class="form-control" name="PlotAreaUnit">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="Area">Area Unit Type </label>
                                <select name="PlotAreaType" id="" class="form-control">
                                    <option value="">Select Unit Type</option>
                                    <option value="Sq. Yards">Sq. Yards</option>
                                    <option value="Sq. Meter">Sq. Meter</option>
                                    <option value="Sq. Foot">Sq. Foot </option>
                                </select>
                            </div>
                            <div class="col-md-12 mt-2 form-group">
                                <label for="Plot Purchase Purpose"> Purpose </label>
                                <select name="PlotPurchasePurpose" id="" class="form-control">
                                    <option value="">Select Purpose</option>
                                    <option value="InvestMent">InvestMent</option>
                                    <option value="OwnRequiremenet">Own Requiremenet</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="">Loaction </label>
                                <input type="text" placeholder="location" name="PlotLocation" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h5 class="app-sub-heading"><i class="fa fa-credit-card"></i> Budget Range</h5>
                            </div>
                            <div id="slider-container" class="col-md-12">
                                <div class="col-md-12 text-center p-3">
                                    <div id="slider_02" class="bg-black"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <label for="min-value">Min Value:</label>
                                        <input type="number" name="PlotMinimumPrice" id="min-value_02" class="form-control">
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="max-value">Max Value:</label>
                                        <input type="number" name="PlotMaximumPrice" id="max-value_02" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-12 mt-3">
                                    <p class="text-italic"><i class="fa fa-info rounded shadow-sm"></i> <i>You can set
                                            the budget according to your requiremnet.</i></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h5 class="app-sub-heading"><i class="fa fa-list"></i> Other</h5>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="RequiredPeriod">Required Period </label>
                                <div class="shadow-sm">
                                    <label class="btn btn-default m-1"> <input type="radio" name="PlotRequiredPeriod" value="In 1 Month"> In 1 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="PlotRequiredPeriod" value="In 3 Month"> In 3 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="PlotRequiredPeriod" value="In 6 Month"> In 6 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="PlotRequiredPeriod" value="In 1 Year"> 1 Year </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="PlotRequiredPeriod" value="In 2 Year"> 2 Year </label>
                                </div>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="RequiredPeriod">Required Amities </label>
                                <div class="shadow-sm mt-2">
                                    <?php
                                    $FetchAmities = _DB_COMMAND_(CONFIG_DATA_SQL("PLOT_AMITIES"), true);
                                    if ($FetchAmities != null) {
                                        foreach ($FetchAmities as $Amities) {
                                            echo '<label class="btn btn-default m-1"><input type="checkbox" name="PlotAmities[]" value=' . $Amities->ConfigValueId . '"> ' . $Amities->ConfigValueDetails . ' </label>';
                                        }
                                    } else {
                                        NoData("No Plot Amities Found!!");
                                    } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Plot Area End Here: -->
            <!-- Flat Area Start Here:  -->
            <div class="row w-100 mt-4" id="paymenetPlan1" style="display: none;">
                <div class="row p-3">
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h3 class='app-sub-heading '><i class="fa fa-braille"></i>Flat Property Deatils</h3>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Area In Unit </label>
                                <input type="number" class="form-control" name="FlatAreaUnit">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="Area">Area Unit Type </label>
                                <select name="FlatAreaType" id="" class="form-control">
                                    <option value="">Select Unit Type</option>
                                    <option value="Sq. Yards">Sq. Yards</option>
                                    <option value="Sq. Meter">Sq. Meter</option>
                                    <option value="Sq. Foot">Sq. Foot </option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="Plot Purchase Purpose"> Purpose </label>
                                <select name="FlatPurchasePurpose" id="" class="form-control">
                                    <option value="">Select Purpose</option>
                                    <option value="InvestMent">InvestMent</option>
                                    <option value="OwnRequiremenet">Own Requiremenet</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="">BHK </label>
                                <input type="number" name="FlatBHK" class="form-control">
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="">Loaction </label>
                                <input type="text" placeholder="location" name="FlatLocation" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h5 class="app-sub-heading"><i class="fa fa-credit-card"></i> Budget Range</h5>
                            </div>
                            <div id="slider-container" class="col-md-12">
                                <div class="col-md-12 text-center p-3">
                                    <div id="slider_01" class="bg-black"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <label for="min-value">Min Value:</label>
                                        <input type="number" name="FlatMinimumPrice" id="min-value_01" class="form-control">
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="max-value">Max Value:</label>
                                        <input type="number" name="FlatMaximumPrice" id="max-value_01" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-12 mt-3">
                                    <p class="text-italic"><i class="fa fa-info rounded shadow-sm"></i> <i>You can set
                                            the budget according to your requiremnet.</i></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h5 class="app-sub-heading"><i class="fa fa-list"></i> Other</h5>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="RequiredPeriod">Required Period </label>
                                <div class="shadow-sm">
                                    <label class="btn btn-default m-1"> <input type="radio" name="FlatRequiredPeriod" value="In 1 Month"> In 1 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="FlatRequiredPeriod" value="In 3 Month"> In 3 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="FlatRequiredPeriod" value="In 6 Month"> In 6 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="FlatRequiredPeriod" value="In 1 Year"> 1 Year </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="FlatRequiredPeriod" value="In 2 Year"> 2 Year </label>
                                </div>
                            </div>

                            <div class="col-md-12 mt-2 form-group">
                                <label for="RequiredPeriod">Required Amenities </label>
                                <div class="shadow-sm">
                                    <?php
                                    $FetchAmities = _DB_COMMAND_(CONFIG_DATA_SQL("FLAT_AMITIES"), true);
                                    if ($FetchAmities != null) {
                                        foreach ($FetchAmities as $Amities) {
                                            echo '<label class="btn btn-default m-1"><input type="checkbox" name="FlatAmities[]" value=' . $Amities->ConfigValueId . '"> ' . $Amities->ConfigValueDetails . ' </label>';
                                        }
                                    } else {
                                        NoData("No Flat Amities Found!!");
                                    } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Flat Area End Here:  -->
            <!-- Villa Area Start Here: -->
            <div class="row w-100 mt-4" id="paymenetPlan2" style="display: none;">
                <div class="row p-3">
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h3 class='app-sub-heading '><i class="fa fa-braille"></i> Property Deatils</h3>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Area In Unit </label>
                                <input type="number" class="form-control" name="VillaAreaUnit">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="Area">Area Unit Type </label>
                                <select name="VillaAreaType" id="" class="form-control">
                                    <option value="">Select Unit Type</option>
                                    <option value="Sq. Yards">Sq. Yards</option>
                                    <option value="Sq. Meter">Sq. Meter</option>
                                    <option value="Sq. Foot">Sq. Foot </option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="Plot Purchase Purpose"> Purpose</label>
                                <select name="VillaPurchasePurpose" id="" class="form-control">
                                    <option value="">Select Purpose</option>
                                    <option value="InvestMent">InvestMent</option>
                                    <option value="OwnRequiremenet">Own Requiremenet</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="">BHK </label>
                                <input type="number" name="VillaBHK" class="form-control">
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="">Loaction </label>
                                <input type="text" placeholder="location" name="VillaLocation" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h5 class="app-sub-heading"><i class="fa fa-credit-card"></i> Budget Range</h5>
                            </div>
                            <div id="slider-container" class="col-md-12">
                                <div class="col-md-12 text-center p-3">
                                    <div id="slider_03" class="bg-black"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <label for="min-value">Min Value:</label>
                                        <input type="number" name="VillaMinimumPrice" id="min-value_03" class="form-control">
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="max-value">Max Value:</label>
                                        <input type="number" name="VillaMaximumPrice" id="max-value_03" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-12 mt-3">
                                    <p class="text-italic"><i class="fa fa-info rounded shadow-sm"></i> <i>You can set
                                            the budget according to your requiremnet.</i></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h5 class="app-sub-heading"><i class="fa fa-list"></i> Other</h5>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="RequiredPeriod">Required Period </label>
                                <div class=" shadow-sm">
                                    <label class="btn btn-default m-1"> <input type="radio" name="VillaRequiredPeriod" value="In 1 Month"> In 1 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="VillaRequiredPeriod" value="In 3 Month"> In 3 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="VillaRequiredPeriod" value="In 6 Month"> In 6 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="VillaRequiredPeriod" value="In 1 Year"> 1 Year </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="VillaRequiredPeriod" value="In 2 Year"> 2 Year </label>
                                </div>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="RequiredPeriod">Required Amenities </label>
                                <div class="shadow-sm">
                                    <?php
                                    $FetchAmities = _DB_COMMAND_(CONFIG_DATA_SQL("VILLA_AMITIES"), true);
                                    if ($FetchAmities != null) {
                                        foreach ($FetchAmities as $Amities) {
                                            echo '<label class="btn btn-default m-1"><input type="checkbox" name="VillaAmities[]" value=' . $Amities->ConfigValueId . '"> ' . $Amities->ConfigValueDetails . ' </label>';
                                        }
                                    } else {
                                        NoData("No Villa Amities Found!!");
                                    } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Villa Area End Here: -->
            <!-- FarmHouse Area Start Here: -->
            <div class="row w-100 mt-4" id="paymenetPlan3" style="display: none;">
                <div class="row p-3">
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h3 class='app-sub-heading '><i class="fa fa-braille"></i> Property Deatils</h3>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Area In Unit </label>
                                <input type="number" class="form-control" name="FarmhouseAreaUnit">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="Area">Area Unit Type </label>
                                <select name="FarmhouseAreaType" id="" class="form-control">
                                    <option value="">Select Unit Type</option>
                                    <option value="Sq. Yards">Sq. Yards</option>
                                    <option value="Sq. Meter">Sq. Meter</option>
                                    <option value="Sq. Foot">Sq. Foot </option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="Plot Purchase Purpose"> Purpose</label>
                                <select name="FarmhousePurchasePurpose" id="" class="form-control">
                                    <option value="">Select Purpose</option>
                                    <option value="InvestMent">InvestMent</option>
                                    <option value="OwnRequiremenet">Own Requiremenet</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="">BHK </label>
                                <input type="number" name="FarmhouseBHK" class="form-control">
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="">Loaction </label>
                                <input type="text" placeholder="location" name="FarmhouseLocation" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h5 class="app-sub-heading"><i class="fa fa-credit-card"></i> Budget Range
                                </h5>
                            </div>
                            <div id="slider-container" class="col-md-12">
                                <div class="col-md-12 text-center p-3">
                                    <div id="slider_04" class="bg-black"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <label for="min-value">Min Value:</label>
                                        <input type="number" name="FarmhouseMinimumPrice" id="min-value_04" class="form-control">
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="max-value">Max Value:</label>
                                        <input type="number" name="FarmhouseMaximumPrice" id="max-value_04" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-12 mt-3">
                                    <p class="text-italic"><i class="fa fa-info rounded shadow-sm"></i> <i>You can set
                                            the budget according to your requiremnet.</i></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h5 class="app-sub-heading"><i class="fa fa-credit-list"></i> Other</h5>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="RequiredPeriod">Required Period </label>
                                <div>
                                    <label class="btn btn-default m-1"> <input type="radio" name="FarmhouseRequiredPeriod" value="In 1 Month"> In 1 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="FarmhouseRequiredPeriod" value="In 3 Month"> In 3 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="FarmhouseRequiredPeriod" value="In 6 Month"> In 6 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="FarmhouseRequiredPeriod" value="In 1 Year"> 1 Year </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="FarmhouseRequiredPeriod" value="In 2 Year"> 2 Year </label>
                                </div>
                            </div>
                            <div class="col-md-12 form-group mt-2">
                                <label for="RequiredPeriod">Required Amenities </label><br>
                                <div class="shadow-sm">
                                    <?php
                                    $FetchAmities = _DB_COMMAND_(CONFIG_DATA_SQL("FARMHOUSE_AMITIES"), true);
                                    if ($FetchAmities != null) {
                                        foreach ($FetchAmities as $Amities) {
                                            echo '<label class="btn btn-default m-1"><input type="checkbox" name="FarmhouseAmities[]" value=' . $Amities->ConfigValueId . '"> ' . $Amities->ConfigValueDetails . ' </label>';
                                        }
                                    } else {
                                        NoData("No Form House Amities Found!!");
                                    } ?>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- FarmHouse Area End Here:-->
            <!-- KOTHI AREA START  -->
            <div class="row w-100 mt-4" id="paymenetPlan4" style="display: none;">
                <div class="row p-3">
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h3 class='app-sub-heading '><i class="fa fa-braille"></i> Kothi Deatils</h3>
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="">Area In Unit </label>
                                <input type="number" class="form-control" name="KothiAreaUnit">
                            </div>
                            <div class="col-md-6 form-group">
                                <label for="Area">Area Unit Type </label>
                                <select name="KothiAreaType" id="" class="form-control">
                                    <option value="">Select Unit Type</option>
                                    <option value="Sq. Yards">Sq. Yards</option>
                                    <option value="Sq. Meter">Sq. Meter</option>
                                    <option value="Sq. Foot">Sq. Foot </option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="Plot Purchase Purpose"> Purpose</label>
                                <select name="KothiPurchasePurpose" id="" class="form-control">
                                    <option value="">Select Purpose</option>
                                    <option value="InvestMent">InvestMent</option>
                                    <option value="OwnRequiremenet">Own Requiremenet</option>
                                </select>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="">BHK </label>
                                <input type="number" name="KothiBHK" class="form-control">
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="">Loaction </label>
                                <input type="text" placeholder="location" name="KothiLocation" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h5 class="app-sub-heading"><i class="fa fa-credit-card"></i> Kothi Budget Range
                                </h5>
                            </div>
                            <div id="slider-container" class="col-md-12">
                                <div class="col-md-12 text-center p-3">
                                    <div id="slider_05" class="bg-black"></div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <label for="min-value">Min Value:</label>
                                        <input type="number" name="KothiMinimumPrice" id="min-value_05" class="form-control">
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <label for="max-value">Max Value:</label>
                                        <input type="number" name="KothiMaximumPrice" id="max-value_05" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-12 mt-3">
                                    <p class="text-italic"><i class="fa fa-info rounded shadow-sm"></i> <i>You can set
                                            the budget according to your requiremnet.</i></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 shadow-sm">
                        <div class="row">
                            <div class="col-md-12 mt-1">
                                <h5 class="app-sub-heading"><i class="fa fa-credit-list"></i> Other</h5>
                            </div>
                            <div class="col-md-12 form-group">
                                <label for="RequiredPeriod">Required Period </label>
                                <div>
                                    <label class="btn btn-default m-1"> <input type="radio" name="KothiRequiredPeriod" value="In 1 Month"> In 1 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="KothiRequiredPeriod" value="In 3 Month"> In 3 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="KothiRequiredPeriod" value="In 6 Month"> In 6 Month </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="KothiRequiredPeriod" value="In 1 Year"> 1 Year </label>
                                    <label class="btn btn-default m-1"> <input type="radio" name="KothiRequiredPeriod" value="In 2 Year"> 2 Year </label>
                                </div>
                            </div>
                            <div class="col-md-12 form-group mt-2">
                                <label for="RequiredPeriod">Required Amenities </label><br>
                                <div class="shadow-sm">
                                    <?php
                                    $FetchAmities = _DB_COMMAND_(CONFIG_DATA_SQL("KOTHI_AMITIES"), true);
                                    if ($FetchAmities != null) {
                                        foreach ($FetchAmities as $Amities) {
                                            echo '<label class="btn btn-default m-1"><input type="checkbox" name="KothiAmities[]" value=' . $Amities->ConfigValueId . '"> ' . $Amities->ConfigValueDetails . ' </label>';
                                        }
                                    } else {
                                        NoData("No KOTHI Amities Found!!");
                                    } ?>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <!-- KOTHI AREA END -->
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
                  <input class='form-check-input checkbox-list mt-0' type='radio' name='ResidentialLeadRequirementDetails[]' value='" . $List->ProjectsId . "'>
                  <h6 class='form-check-label bold mb-0 fs-12'>" . $List->ProjectName . " - <i>$ProjectType</i></h6>
                  </div>
                  </div>";
                } ?>
            </div>
            <div class="form-group col-md-12 mt-3">
                <label>Add Note & Remarks <span class="text-danger">*</span></label>
                <textarea name="ResidentialLeadPersonNotes" required="" class="form-control" rows="3"></textarea>
            </div>
            <div class="text-center col-md-12">

                <button type="submit" name="ResidentialLead" class="btn btn-dark m-1"><i class="fa fa-plus bold"></i>
                    Add Residential Lead</button>
                <a href="index.php" class="btn btn-default">Cancel</a>
            </div>
        </div>
    </div>
</form>