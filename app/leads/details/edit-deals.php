<?php
$Dir = "../../..";
require $Dir . '/acm/SysFileAutoLoader.php';
require $Dir . '/handler/AuthController/AuthAccessController.php';


//pagevariables
$PageName = "Edit Deal Details";
$PageDescription = "Manage all leads";

if (isset($_GET['dealsid'])) {
    $_SESSION['REQ_LeadsId'] = SECURE($_GET['dealsid'], "d");
    $REQ_LeadsId = $_SESSION['REQ_LeadsId'];
} else {
    $REQ_LeadsId = $_SESSION['REQ_LeadsId'];
}

$PageSqls = "SELECT * FROM leads where LeadsId='$REQ_LeadsId'";

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title><?php echo $PageName; ?> | <?php echo APP_NAME; ?></title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
    <meta name="keywords" content="<?php echo APP_NAME; ?>">
    <meta name="description" content="<?php echo SECURE(SHORT_DESCRIPTION, "d"); ?>">
    <?php include $Dir . "/assets/HeaderFiles.php"; ?>
    <script type="text/javascript">
        function SidebarActive() {

            document.getElementById("all_leads").classList.add("active");
        }
        window.onload = SidebarActive;
    </script>
</head>

<body class="hold-transition sidebar-mini">
    <div class="wrapper">
        <?php  ?>

        <?php
        include $Dir . "/include/app/Header.php";
        include $Dir . "/include/sidebar/get-side-menus.php"; ?>


        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card card-primary">
                                <div class="card-body">

                                    <form action="<?php echo CONTROLLER; ?>" method="POST">
                                        <?php FormPrimaryInputs(true, [
                                            "ManagedBy" => GET_DATA("leads", "LeadPersonManagedBy", "LeadsId='$REQ_LeadsId'")
                                        ]); ?>
                                        <div class="row">
                                            <div class="col-md-7">
                                                <h4 class="app-heading"><?php echo GET_DATA("leads", "LeadPersonFullname", "LeadsId='$REQ_LeadsId'"); ?> : <?php echo LEADID($REQ_LeadsId); ?></h4>
                                                <div class="row mb-2px">
                                                    <div class="form-group col-md-3">
                                                        <label>Salutation</label>
                                                        <select name="LeadSalutations" class="form-control">
                                                            <?php InputOptions(["Mr.", "Mrs.", "Miss.", "Ms.", "Dr.", "Prof.", "Sir"], GET_DATA("leads", "LeadSalutations", "LeadsId='$REQ_LeadsId'")); ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-9">
                                                        <label>Full Name</label>
                                                        <input type="text" name="LeadPersonFullname" value="<?php echo GET_DATA("leads", "LeadPersonFullname", "LeadsId='$REQ_LeadsId'"); ?>" list="LeadPersonFullname" class="form-control" placeholder="Gaurav Singh" required="">
                                                        <?php SUGGEST("leads", "LeadPersonFullname", "ASC") ?>
                                                    </div>
                                                </div>

                                                <div class="row mb-2px">
                                                    <div class="form-group col-md-5">
                                                        <label>Phone Number</label>
                                                        <input type="phone" name="LeadPersonPhoneNumber" value="<?php echo GET_DATA("leads", "LeadPersonPhoneNumber", "LeadsId='$REQ_LeadsId'"); ?>" list="LeadPersonPhoneNumber" placeholder="without +91" class="form-control" required="">
                                                        <?php SUGGEST("leads", "LeadPersonPhoneNumber", "ASC") ?>
                                                    </div>
                                                    <div class="form-group col-md-7">
                                                        <label>Email</label>
                                                        <input type="email" name="LeadPersonEmailId" value="<?php echo GET_DATA("leads", "LeadPersonEmailId", "LeadsId='$REQ_LeadsId'"); ?>" list="LeadPersonEmailId" class="form-control" placeholder="example@domain.tld">
                                                        <?php SUGGEST("leads", "LeadPersonEmailId", "ASC") ?>
                                                    </div>
                                                </div>
                                                <div class="row mb-2px">
                                                    <div class="form-group col-md-4">
                                                        <label>Lead Stage </label>
                                                        <select class="form-control" name="LeadPersonStatus">
                                                            <?php
                                                            CONFIG_VALUES("LEAD_STAGES", GET_DATA("leads", "LeadPersonStatus", "LeadsId='$REQ_LeadsId'")); ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-4">
                                                        <label>Lead Priority level </label>
                                                        <select class="form-control" name="LeadPriorityLevel">
                                                            <?php CONFIG_VALUES("LEAD_PERIORITY_LEVEL", GET_DATA("leads", "LeadSalutations", "LeadsId='$REQ_LeadsId'")); ?>
                                                        </select>
                                                    </div>
                                                    <div class="form-group col-md-4">
                                                        <label>Lead Source</label>
                                                        <select class="form-control" name="LeadPersonSource">
                                                            <?php CONFIG_VALUES("LEAD_SOURCES", GET_DATA("leads", "LeadPersonSource", "LeadsId='$REQ_LeadsId'")); ?>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row mb-2px">
                                                    <div class="form-group col-md-12">
                                                        <label>Address</label>
                                                        <textarea name="LeadPersonAddress" row="3" class="form-control" placeholder="Address"><?php echo GET_DATA("leads", "LeadPersonAddress", "LeadsId='$REQ_LeadsId'"); ?></textarea>
                                                    </div>
                                                </div>

                                                <?php if (LOGIN_UserType == "Admin") { ?>
                                                    <div class="row mb-2px">
                                                        <div class="form-group col-md-6">
                                                            <label>Lead Assigned To</label>
                                                            <select class="form-control" name="LeadPersonManagedBy">
                                                                <?php
                                                                $Users = _DB_COMMAND_("SELECT * FROM users ORDER BY UserFullName ASC", true);
                                                                foreach ($Users as $User) {
                                                                    if ($User->UserId == GET_DATA("leads", "LeadPersonManagedBy", "LeadsId='$REQ_LeadsId'")) {
                                                                        $selected = "selected";
                                                                    } else {
                                                                        $selected = "";
                                                                    }
                                                                    echo "<option value='" . $User->UserId . "' $selected>" . $User->UserFullName . " @ " . $User->UserPhoneNumber . "</option>";
                                                                }
                                                                ?>
                                                            </select>
                                                        </div>
                                                    </div>
                                                <?php } ?>

                                            </div>
                                            <div class="col-md-5">
                                                <div class="row mb-2px">
                                                    <div class="col-md-12">
                                                        <h5 class="app-sub-heading"><?php echo GET_DATA("leads", "LeadType", "LeadsId='$REQ_LeadsId'"); ?> DETAILS</h5>
                                                    </div>
                                                </div>
                                                <div class="row">


                                                    <!--==================================================== edit Residential commercial and agriculture leads=========================================================== -->
                                                    <?php $LeadType = GET_DATA("leads", 'LeadType', "LeadsId='$REQ_LeadsId'");
                                                    // Agriculture
                                                    if ($LeadType == "AGRICULTURE") { ?>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Land Size <span class="text-danger">*</span></label>
                                                            <input type="text" class="form-control" name="AgricultureAreaUnit" placeholder="land size" value="<?php echo GET_DATA("agriculture_leads", "LeadPropertyArea", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>

                                                        <div class='col-md-6 form-group'>
                                                            <label>Land Type <span class="text-danger">*</span> </label>
                                                            <input type="text" name="AgricultureLandType" class="form-control " placeholder="land type" value="<?php echo GET_DATA("agriculture_leads", "LandType", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class='col-md-6 form-group'>
                                                            <label>Land Price <span class="text-danger">*</span> </label>
                                                            <input type="number" name="AgricultureLandPrice" class="form-control " placeholder="land price" value="<?php echo GET_DATA("agriculture_leads", "LandPrice", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="Purchase Purpose"> Purpose <span class="text-danger">*</span></label>
                                                            <select name="AgriculturePurchasePurpose" id="" class="form-control">
                                                                <?php $SelectedOption = GET_DATA("agriculture_leads", "PurchasePurpose", "LeadMainId='$REQ_LeadsId'");
                                                                echo InputOptions(["Select Purpose", "Investment", "Personal Use"], $SelectedOption);
                                                                ?>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-12 form-group">
                                                            <label for="">Loaction <span class="text-danger">*</span></label>
                                                            <input type="text" placeholder="location" name="AgricultureLoaction" class="form-control" value="<?php echo  GET_DATA("agriculture_leads", "Location", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-12 form-group mt-2">
                                                            <label for="RequiredPeriod">Nearest Facility <span class="text-danger">*</span></label>
                                                            <div class="shadow-sm">
                                                                <?php
                                                                $Amity = _DB_COMMAND_("SELECT * FROM agriculture_leads WHERE LeadMainId='$REQ_LeadsId'", true);
                                                                if ($Amity != null) {
                                                                    $array = [];
                                                                    foreach ($Amity as $a) {
                                                                        $decodedAmities = htmlspecialchars_decode($a->Amities);
                                                                        $AmityArray = explode(',', $decodedAmities);
                                                                        foreach ($AmityArray as $value) {
                                                                            array_push($array, $value);
                                                                        }
                                                                        echo CHECKBOX_CONFIG_VALUES("AGRICULTURE_AMITIES", $array, "AgricultureAmities");
                                                                    }
                                                                }
                                                                ?>

                                                            </div>
                                                        </div>
                                                        <div class='col-md-12 form-group mt-2'>
                                                            <label>When you are going to purchase <span class="text-danger">*</span></label>
                                                            <div class="box-shadow mt-1">
                                                                <?php
                                                                $Period = GET_DATA("agriculture_leads", "RequiredPeriod", "LeadMainId='$REQ_LeadsId'");
                                                                echo InputTypeRadio([
                                                                    "In 1 Month" => "In 1 Month",
                                                                    "In 3 Month" => "In 3 Month",
                                                                    "In 6 Month" => "In 6 Month",
                                                                    "In 1 Year" => "In 1 Year",
                                                                    "In 2 Year" => "In 2 Year",
                                                                ], $Period, "AgriculturePurchaseDate");
                                                                ?>
                                                            </div>
                                                        </div>
                                                        <div class='col-md-6 form-group'>
                                                            <label>City </label>
                                                            <input type="text" name="AgricultureCity" class="form-control " placeholder="city" value="<?php echo GET_DATA("agriculture_leads", "LeadCity", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class='col-md-6 form-group'>
                                                            <label>State </label>
                                                            <input type="text" name="AgricultureState" class="form-control " placeholder="state" value="<?php echo GET_DATA("agriculture_leads", "LeadState", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class='col-md-6 form-group'>
                                                            <label>Pincode </label>
                                                            <input type="text" name="AgriculturePincode" class="form-control " placeholder="pincode" value="<?php echo GET_DATA("agriculture_leads", "LeadPincode", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>

                                                    <?php // Residential
                                                    } elseif ($LeadType == "RESIDENTIAL") { ?>
                                                        <div class='col-md-6 form-group'>
                                                            <label>Property Type </label>
                                                            <select class="form-control" id="propertyType" name="ResidentialPropertyType">
                                                                <?php $PropertyTypeOption = GET_DATA("residential_leads", "LeadPropertyType", "LeadMainId='$REQ_LeadsId'");
                                                                if ($PropertyTypeOption == null) {
                                                                    $selected = "";
                                                                } else {
                                                                    $selected = "selected";
                                                                } ?>
                                                                <?php echo InputOptionsWithKey([
                                                                    "" => "Select Property Type",
                                                                    "PLOT" => "Plot",
                                                                    "FLAT" => "Flat",
                                                                    "VILLA" => "Villa",
                                                                    "KOTHI" => "Kothi",
                                                                    "FARMHOUSE" => "FarmHouse",
                                                                ], $PropertyTypeOption); ?>

                                                            </select>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Property Area </label>
                                                            <input type="text" class="form-control" name="PlotAreaUnit" value="<?php echo GET_DATA("residential_leads", "LeadPropertyArea", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-6 mt-2 form-group">
                                                            <label for="Plot Purchase Purpose"> Purpose </label>
                                                            <select name="PlotPurchasePurpose" id="" class="form-control">
                                                                <option value="">Select Purpose</option>
                                                                <?php echo InputOptions(["InvestMent", "OwnRequiremenet"], GET_DATA("residential_leads", "LeadPurchasePurpose", "LeadMainId='$REQ_LeadsId'")); ?>
                                                            </select>
                                                        </div>
                                                        <?php
                                                        if ($PropertyTypeOption !== "PLOT") { ?>
                                                            <div class="col-md-6 mt-2 form-group">
                                                                <label for="">BHK </label>
                                                                <input type="number" name="FlatBHK" class="form-control" value="<?php echo GET_DATA("residential_leads", "Lead_BHK", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                            </div>
                                                        <?php
                                                        } ?>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Loaction</label>
                                                            <input type="text" placeholder="location" name="PlotLocation" class="form-control" value="<?php echo GET_DATA("residential_leads", "LeadLocation", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="min-value">Min Budget</label>
                                                            <input type="number" name="PlotMinimumPrice" id="min-value_02" class="form-control" value="<?php echo GET_DATA("residential_leads", "LeadMinimumBudget", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="max-value">Max Budget</label>
                                                            <input type="number" name="PlotMaximumPrice" id="max-value_02" class="form-control" value="<?php echo GET_DATA("residential_leads", "LeadMaximumBudget", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-12 form-group">
                                                            <label for="RequiredPeriod">Required Period <span class="text-danger">*</span></label>
                                                            <div class="shadow-sm">
                                                                <?php
                                                                $Period = GET_DATA("residential_leads", "LeadRequiredPeriod", "LeadMainId='$REQ_LeadsId'");

                                                                echo InputTypeRadio([
                                                                    "In 1 Month" => "In 1 Month",
                                                                    "In 3 Month" => "In 3 Month",
                                                                    "In 6 Month" => "In 6 Month",
                                                                    "In 1 Year" => "In 1 Year",
                                                                    "In 2 Year" => "In 2 Year",
                                                                ], $Period, "ResidentialPurchaseDate"); ?></div>
                                                        </div>
                                                        <div class="col-md-12 form-group">
                                                            <label for="RequiredPeriod">Amities <span class="text-danger">*</span></label>
                                                            <div class="shadow-sm mt-2">

                                                                <?php
                                                                $PlotAmity = _DB_COMMAND_("SELECT * FROM residential_leads WHERE LeadMainId='$REQ_LeadsId'", true);
                                                                $arraytwo = [];
                                                                foreach ($PlotAmity as $a) {
                                                                    $decoded0Amities = htmlspecialchars_decode($a->LeadAmities);
                                                                    $AmityArray = explode(',', $decoded0Amities);
                                                                    foreach ($AmityArray as $value) {
                                                                        array_push($arraytwo, $value);
                                                                    }
                                                                }
                                                                if ($PropertyTypeOption == "VILLA") {
                                                                    echo CHECKBOX_CONFIG_VALUES("VILLA_AMITIES", $arraytwo, "VillaAmities");
                                                                } elseif ($PropertyTypeOption == "PLOT") {
                                                                    echo CHECKBOX_CONFIG_VALUES("PLOT_AMITIES", $arraytwo, "PlotAmities");
                                                                } elseif ($PropertyTypeOption == "FLAT") {
                                                                    echo CHECKBOX_CONFIG_VALUES("FLAT_AMITIES", $arraytwo, "FlatAmities");
                                                                } elseif ($PropertyTypeOption == "KOTHI") {
                                                                    echo CHECKBOX_CONFIG_VALUES("KOTHI_AMITIES", $arraytwo, "KothiAmities");
                                                                } elseif ($PropertyTypeOption == "FARMHOUSE") {
                                                                    echo CHECKBOX_CONFIG_VALUES("FARMHOUSE_AMITIES", $arraytwo, "FarmhouseAmities");
                                                                } else {
                                                                    NoData("No Amity Found");
                                                                }
                                                                ?>
                                                            </div>
                                                        </div>
                                                        <div class='col-md-6 form-group'>
                                                            <label>City </label>
                                                            <input type="text" name="ResidentialCity" class="form-control " placeholder="city" value="<?php echo GET_DATA("residential_leads", "LeadCity", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class='col-md-6 form-group'>
                                                            <label>State </label>
                                                            <input type="text" name="ResidentialState" class="form-control " placeholder="state" value="<?php echo GET_DATA("residential_leads", "LeadState", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class='col-md-6 form-group'>
                                                            <label>Pincode </label>
                                                            <input type="text" name="ResidentialPincode" class="form-control " placeholder="pincode" value="<?php echo GET_DATA("residential_leads", "LeadPincode", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                    <?php // commercial leads
                                                    } elseif ($LeadType == "COMMERCIAL") { ?>
                                                        <div class="col-md-6 form-group">
                                                            <label>Property Area</label>
                                                            <input type="text" placeholder="property Area" name='CommercialPropertyArea' class="form-control" value="<?php echo GET_DATA("commercial_leads", "LeadPropertyArea", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>Total Cabins</label>
                                                            <!-- <input type="number" placeholder="cabin" class="form-control" value=""> -->

                                                            <select name="CommercialCabin" id="" class="form-control">
                                                                <?php echo InputOptionsWithKey([
                                                                    "" => "Select Number Of Cabins",
                                                                    "1" => "1",
                                                                    "2" => "2",
                                                                    "3" => "3",
                                                                    "4" => "4",
                                                                    "5" => "5",
                                                                    "6" => "6",
                                                                    "7" => "7",
                                                                    "8" => "8",
                                                                    "9" => "9",
                                                                    "10" => "10",
                                                                ], GET_DATA("commercial_leads", "NumberOfCabin", "LeadMainId='$REQ_LeadsId'")); ?>

                                                            </select>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>Total Siting</label>
                                                            <select name="CommercialSiting" class="form-control">
                                                                <?php
                                                                echo InputOptionsWithKey([
                                                                    "" => "Select Number of Sitings",
                                                                    "0-15" => "0-15",
                                                                    "15-30" => "15-30",
                                                                    "30-45" => "30-45",
                                                                    "45-60" => "45-60",
                                                                    "75-90" => "75-90",
                                                                    "90-100" => "90-100",
                                                                ], GET_DATA("commercial_leads", "NumberOfSiting", "LeadMainId='$REQ_LeadsId'")); ?>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label>Furnished Type</label>
                                                            <select name="CommercialPropertyFurnished" class="form-control">
                                                                <?php echo InputOptions(["Semi Furnished", "Fully Furnished", "Partially Furnished"], GET_DATA("commercial_leads", "FurnishedType", "LeadMainId='$REQ_LeadsId'")); ?>
                                                            </select>
                                                        </div>
                                                        <div class='col-md-6 form-group '>
                                                            <label>Purpose </label>
                                                            <select class="form-control" name="CommercialPurchasePurpose" name="commercialPropertyDetails">
                                                                <?php
                                                                echo InputOptionsWithKey([
                                                                    "" => "Select Purpose",
                                                                    "BUY" => "Buy",
                                                                    "RENT" => "Rent",
                                                                    "SELL" => "Sell"
                                                                ], GET_DATA("commercial_leads", "PurchasePurpose", "LeadMainId='$REQ_LeadsId'")); ?>
                                                            </select>
                                                        </div>
                                                        <?php if (GET_DATA("commercial_leads", "PurchasePurpose", "LeadMainId='$REQ_LeadsId'") == "RENT") { ?>
                                                            <div class='col-md-6 form-group '>
                                                                <label>Rent Discription </label>
                                                                <select class="form-control" name="CommercialRentDetails" name="commercialPropertyDetails">
                                                                    <option value="">Select Rent Condition</option>
                                                                    <?php
                                                                    echo InputOptions(["1 Month Rent + 2 Month Security", "1 Month Rent + 1 Month Security"], GET_DATA("commercial_leads", "RentDetails", "LeadMainId='$REQ_LeadsId'")); ?>
                                                                </select>
                                                            </div>
                                                        <?php } ?>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Minimum Budget</label>
                                                            <input type="number" placeholder="Minimum budget" name="commercialminbudget" class="form-control" value="<?php echo GET_DATA("commercial_leads", "LeadMinimumBudget", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Maximum Budget</label>
                                                            <input type="number" placeholder="Maximum budget" name="commercialmaxbudget" class="form-control" value="<?php echo GET_DATA("commercial_leads", "LeadMaximumBudget", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Location </label>
                                                            <input type="text" placeholder="Loaction" name="CommercialLocation" class="form-control" value="<?php echo GET_DATA("commercial_leads", "Location", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Reception</label>
                                                            <div class="shadow-sm">
                                                                <?php echo InputTypeRadio(["Free Space" => "Free Space", "Separate" => "Separate"], GET_DATA("commercial_leads", "Reception", "LeadMainId='$REQ_LeadsId'"), "CommercialReception"); ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Night Shift</label>
                                                            <div class="shadow-sm">
                                                                <?php echo InputTypeRadio(["Yes" => "Yes", "Optional" => "Optional", "No" => "No",], GET_DATA("commercial_leads", "NightShift", "LeadMainId='$REQ_LeadsId'"), "CommercialNightShift"); ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Panetry</label>
                                                            <div class="shadow-sm">
                                                                <?php echo InputTypeRadio(["Yes" => "Yes", "No" => "No"], GET_DATA("commercial_leads", "Panetry", "LeadMainId='$REQ_LeadsId'"), "CommercialPanetry"); ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Washroom</label>
                                                            <div class=" shadow-sm">
                                                                <?php echo InputTypeRadio(["Seperate" => "Seperate", "Shared" => "Shared"], GET_DATA("commercial_leads", "Washroom", "LeadMainId='$REQ_LeadsId'"), "CommercialWashroom"); ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Required Period</label>
                                                            <div class="shadow-sm">
                                                                <?php
                                                                $Period = GET_DATA("commercial_leads", "RequiredPeriod", "LeadMainId='$REQ_LeadsId'");
                                                                echo InputTypeRadio([
                                                                    "In 1 Month" => "In 1 Month",
                                                                    "In 3 Month" => "In 3 Month",
                                                                    "In 6 Month" => "In 6 Month",
                                                                    "In 1 Year" => "In 1 Year",
                                                                    "In 2 Year" => "In 2 Year",
                                                                ], $Period, "CommercialPurchaseDate"); ?></div>
                                                        </div>
                                                        <div class="col-md-12 form-group">
                                                            <label for="">Amities</label>
                                                            <div class="shadow-sm">
                                                                <?php $CommercialAmity = _DB_COMMAND_("SELECT * FROM commercial_leads WHERE LeadMainId='$REQ_LeadsId'", true);
                                                                $arraytwo = [];
                                                                foreach ($CommercialAmity as $a) {
                                                                    $decoded0Amities = htmlspecialchars_decode($a->Amities);
                                                                    $AmityArray = explode(',', $decoded0Amities);
                                                                    foreach ($AmityArray as $value) {
                                                                        array_push($arraytwo, $value);
                                                                    }
                                                                }
                                                                echo CHECKBOX_CONFIG_VALUES("COMMERCIAL_AMITIES", $arraytwo, "CommercialAmities"); ?>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">City</label>
                                                            <input type="text" placeholder="city" class="form-control" name="commercialcity" value="<?php echo GET_DATA("commercial_leads", "LeadCity", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">State</label>
                                                            <input type="text" placeholder="state" class="form-control" name="commercialState" value="<?php echo GET_DATA("commercial_leads", "LeadState", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                        <div class="col-md-6 form-group">
                                                            <label for="">Pincode</label>
                                                            <input type="text" placeholder="pincode" class="form-control" name="commercialpincode" value="<?php echo GET_DATA("commercial_leads", "LeadPincode", "LeadMainId='$REQ_LeadsId'"); ?>">
                                                        </div>
                                                </div>
                                            <?php } ?>
                                            </div>
                                            <!--======================================================= edit Residential commercial and agriculture leads=========================================================== -->
                                        </div>
                                        <div class="form-group col-md-12">
                                            <label>Notes/Remarks</label>
                                            <textarea name="LeadPersonNotes" class="form-control" rows="3"><?php echo SECURE(GET_DATA("leads", "LeadPersonNotes", "LeadsId='$REQ_LeadsId'"), "d"); ?></textarea>
                                        </div>
                                        <div class="col-md-12 text-center">
                                            <a href="index.php" class="btn btn-sm btn-default mt-4" value="<?php echo SECURE($REQ_LeadsId, "e"); ?>"><i class="fa fa-angle-double-left"></i> Back To Details</a>
                                            <button class="btn btn-sm btn-success mt-4" name="UpdateLeads" value="<?php echo SECURE($REQ_LeadsId, "e"); ?>" TYPE="submit">Update Lead Details</button>
                                        </div>
                                </div>
                                </form>
                            </div>
                        </div>
                        <script>
                            function CheckCallStatus() {
                                var call_status = $("#call_status").val();
                                if (call_status == "FollowUp") {
                                    $("#call_reminder").removeClass("hidden");
                                } else {
                                    $("#call_reminder").addClass("hidden");
                                }
                            }
                        </script>
                        <script>
                            function GetExpireDate() {
                                var date = document.getElementById("purchasedate").value;
                                var period = document.getElementById("purchaseperiod").value;
                                var expire = new Date(date);
                                expire.setFullYear(expire.getFullYear() + parseInt(period));
                                document.getElementById("expiredate").value = expire.toISOString().substring(0, 10);
                            }

                            function DomainPreview() {
                                var domain = document.getElementById("domain").value;
                                document.getElementById("domain_preview").src = "https://www.whois.com/whois/" + domain;
                            }
                        </script>
                    </div>
                </div>
        </div>
        </section>
    </div>

    <?php
    include $Dir . "/include/app/Footer.php"; ?>
    </div>

    <?php include $Dir . "/assets/FooterFiles.php"; ?>

</body>

</html>