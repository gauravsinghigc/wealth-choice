<?php
require __DIR__ . "/../acm/SysFileAutoLoader.php";
if (isset($_GET['add_new_lead']) == "true") {
    $ApiAuthenticationKey = $_GET['key'];
    $Key = SECURE($_GET['key'], "d");
    // Get Main Api key
    $MainApiKey = FETCH("SELECT AuthenticationKey FROM authenticationkey ", "AuthenticationKey");
    if ($Key == $MainApiKey) {
        //check lead type
        if ($_GET['lead_type'] == null) {
            $LeadType = "RESIDENTIAL";
        } else {
            $LeadType = $_GET['lead_type'];
        }

        // get user 
        $ManageBy =  FETCH("SELECT * FROM users WHERE UserType NOT IN ('Admin', 'Digital') AND UserStatus='1'  ORDER BY rand() LIMIT 1", "UserId");
        echo $ManageBy;
        $leads = [
            "LeadPersonFullname" => $_GET['full_name'],
            "LeadPersonPhoneNumber" => $_GET['phone_number'],
            "LeadPersonEmailId" => $_GET['email_id'],
            "LeadPersonSource" => $_GET['source'],
            "LeadPersonManagedBy" => "$ManageBy", //dynamic distribution of leads
            "LeadPriorityLevel" => "HIGH",
            "LeadPersonStatus" => " FRESH LEAD",
            "LeadPersonCreatedBy" => "1",
            "LeadPersonCreatedAt" => CURRENT_DATE_TIME,
            "LeadPersonNotes" => SECURE($_GET['remarks'], "e"),
            "LeadPersonLastUpdatedAt" => CURRENT_DATE_TIME,
            "LeadType" => $LeadType,
        ];
        // check email and phone number
        $check = CHECK("SELECT * FROM leads where LeadPersonPhoneNumber='" . $_GET['phone_number'] . "'and LeadPersonEmailId ='" . $_GET['email_id'] . "'");
        if ($check == null) {
            $SAVE = INSERT("leads", $leads);
            $LeadsId =  FETCH("SELECT * FROM leads ORDER BY LeadsId DESC LIMIT 1", "LeadsId");
            // SAVE LEAD REQUIREMNET
            $ProjectId = _DB_COMMAND_("SELECT * FROM projects WHERE ProjectName like '%" . $_GET['project_name'] . "%'", true);
            $checkProject = CHECK("SELECT * FROM projects WHERE ProjectName like '%" . $_GET['project_name'] . "%'");
            if ($checkProject == true) {
                if ($ProjectId != null) {
                    $requirements = [
                        "LeadMainId" => $LeadsId,
                        "LeadRequirementDetails" =>  $ProjectId,
                        "LeadRequirementCreatedAt" => CURRENT_DATE_TIME
                    ];
                    $save_req = INSERT("lead_requirements", $requirements);
                }
            }
            // SAVE OTHER RECORD
            if ($LeadType == "RESIDENTIAL") {
                $data = [
                    "LeadMainId" => $LeadsId,
                    "LeadPropertyArea" => $_GET['property_area'],
                    "LeadPurchasePurpose" => $_GET['purpose'],
                    "LeadLocation" => $_GET['address_locality'],
                    "LeadMinimumBudget" => $_GET['min_budget'],
                    "LeadMaximumBudget" => $_GET['max_budget'],
                    "LeadCreatedAt" => CURRENT_DATE_TIME,
                    "LeadUpdatedAt" => CURRENT_DATE_TIME,

                ];
                $insert = INSERT("residential_leads", $data);
            } elseif ($LeadType == "COMMERCIAL") {
                $data = [
                    "LeadMainId" => $LeadsId,
                    "LeadPropertyArea" => $_GET['property_area'],
                    "PurchasePurpose" => $_GET['purpose'],
                    "LeadMinimumBudget" => $_GET['min_budget'],
                    "LeadMaximumBudget" => $_GET['max_budget'],
                    "Location" => $_GET['address_locality'],
                    "LeadCreatedAt" => CURRENT_DATE_TIME,
                    "LeadUpdatedAt" => CURRENT_DATE_TIME,

                ];
                $insert = INSERT("commercial_leads", $data);
            } elseif ($LeadType == "AGRICULTURE") {
                $data = [
                    "LeadMainId" => $LeadsId,
                    "LeadPropertyArea" => $_GET['property_area'],
                    "PurchasePurpose" => $_GET['purpose'],
                    "LandPrice" => $_GET['max_budget'],
                    "Location" => $_GET['address_locality'],
                    "LeadCreatedAt" => CURRENT_DATE_TIME,
                    "LeadUpdatedAt" => CURRENT_DATE_TIME,

                ];
                $insert = INSERT("agriculture_leads", $data);
            } else {
                $data = [
                    "LeadMainId" => $LeadsId,
                    "LeadPropertyArea" => $_GET['property_area'],
                    "LeadPurchasePurpose" => $_GET['purpose'],
                    "LeadLocation" => $_GET['address_locality'],
                    "LeadMinimumBudget" => $_GET['min_budget'],
                    "LeadMaximumBudget" => $_GET['max_budget'],
                    "LeadCreatedAt" => CURRENT_DATE_TIME,
                    "LeadUpdatedAt" => CURRENT_DATE_TIME,

                ];
                $insert = INSERT("residential_leads", $data);
            }
        } else {
            $SAVE = false;
        }
        if ($SAVE == true) {
            echo "true";
        } else {
            echo "false";
        }
    } else {
        echo "Invalid Authentication Key";
    }
}

// create url 
// $MainApiKey = FETCH("SELECT AuthenticationKey FROM authenticationkey ", "AuthenticationKey");
// $e_key = SECURE($MainApiKey, "e");
// echo
// 'https://wealth-choice.apnalead.com/api/LeadsInsertionAPI.php?add_new_lead=true&key=' . $e_key . '&full_name=Gaurav%20Singh&phone_number=8447572565&email_id=gauravsinghigc@gmail.com&address_locality=faridabad&source=Housing&lead_type=RESIDENTIAL&min_budget=1000000&max_budget=1500000&purpose=Buy&property_area=600%20Sq%20meter&remarks=interested%20in%20residential%20property&project_name=Ashiana%20Anmol';

// new URL : 
//https://wealth-choice.apnalead.com/api/LeadsInsertionAPI.php?add_new_lead=true&key=ZXNFNEU0MmVJYXYzRkEyeUNGbVM5YmNNaGdFZS83Nndsd1F3T2M3V0xBYz0=&full_name=Gaurav%20Singh&phone_number=8447572565&email_id=gauravsinghigc@gmail.com&address_locality=faridabad&source=Housing&lead_type=COMMERCIAL&min_budget=1000000&max_budget=1500000&purpose=Buy&property_area=600%20Sq%20meter&remarks=interested%20in%20residential%20property&project_name=Ashiana%20Anmol

//Encripted API KEY 
// ZXNFNEU0MmVJYXYzRkEyeUNGbVM5YmNNaGdFZS83Nndsd1F3T2M3V0xBYz0