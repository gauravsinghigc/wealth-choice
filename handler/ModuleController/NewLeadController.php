<?php
// Residential, Commercial, and Agriculture Leads save

if (isset($_POST['ResidentialLead'])) {
    // Save lead details
    $phone = $_POST['ResidentialCustomerPhoneNumber'];
    $CheckPhone = CHECK("SELECT * FROM leads WHERE LeadPersonPhoneNumber='$phone'");
    if ($CheckPhone) {
        LOCATION("warning", "Phone Number already Exist", APP_URL . "/leads/add.php");
    } else {
        $NewLead = [
            "LeadSalutations" => $_POST['ResidentialSalutation'],
            "LeadPersonFullname" => $_POST['ResidentialCustomerName'],
            "LeadPersonPhoneNumber" => $_POST['ResidentialCustomerPhoneNumber'],
            "LeadPersonEmailId" => $_POST['ResidentialCustomeremailId'],
            "LeadPersonAddress" => $_POST['ResidentialCustomerAddress'],
            "LeadPersonCreatedBy" => LOGIN_UserId,
            "LeadPersonStatus" => $_POST['ResidentialLeadPersonStatus'],
            "LeadPersonSource" => $_POST['ResidentialLeadPersonSource'],
            "LeadPersonManagedBy" => $_POST['ResidentialLeadPersonManagedBy'],
            "LeadPriorityLevel" => $_POST['ResidentialLeadPriorityLevel'],
            "LeadPersonCreatedAt" => CURRENT_DATE_TIME,
            "LeadPersonNotes" => SECURE($_POST['ResidentialLeadPersonNotes'], "e"),
            "LeadPersonLastUpdatedAt" => CURRENT_DATE_TIME,
            "LeadType" => "RESIDENTIAL",
        ];
        $SAVE = INSERT("leads", $NewLead);
        // Get Lead id
        $LeadsId = FETCH("SELECT * FROM leads ORDER BY LeadsId DESC LIMIT 1", "LeadsId");
        $LeadMainId = $LeadsId;

        // Save Residential Details
        if ($_POST['ResidentialPropertyType'] == "PLOT") {
            $AmitiesValues = isset($_POST['PlotAmities']) ? $_POST['PlotAmities'] : [];
            $AmitiesCode = implode(',', $AmitiesValues);
            $Amities = preg_replace('/[^0-9,]/', '', $AmitiesCode);

            $ResidentialDetails = [
                "LeadMainId" => $LeadMainId,
                "LeadPropertyType" => $_POST['ResidentialPropertyType'],
                "LeadPropertyArea" => $_POST['PlotAreaUnit'] . " - " . $_POST['PlotAreaType'],
                "Lead_BHK" => null,
                "LeadPurchasePurpose" => $_POST['PlotPurchasePurpose'],
                "LeadLocation" => $_POST['PlotLocation'],
                "LeadMinimumBudget" => $_POST['PlotMinimumPrice'],
                "LeadMaximumBudget" => $_POST['PlotMaximumPrice'],
                "LeadRequiredPeriod" => $_POST['PlotRequiredPeriod'],
                "LeadAmities" => $Amities,
                "LeadCity" => $_POST['ResidentialCity'],
                "LeadState" => $_POST['ResidentialState'],
                "LeadPincode" => $_POST['ResidentialPincode'],
                "LeadCreatedAt" => CURRENT_DATE_TIME,
                "LeadUpdatedAt" => CURRENT_DATE_TIME
            ];
        } elseif ($_POST['ResidentialPropertyType'] == "FLAT") {
            $AmitiesValues = isset($_POST['FlatAmities']) ? $_POST['FlatAmities'] : [];
            $AmitiesCode = implode(',', $AmitiesValues);
            $Amities = preg_replace('/[^0-9,]/', '', $AmitiesCode);
            $ResidentialDetails = [
                "LeadMainId" => $LeadMainId,
                "LeadPropertyType" => $_POST['ResidentialPropertyType'],
                "LeadPropertyArea" => $_POST['FlatAreaUnit'] . " - " . $_POST['FlatAreaType'],
                "Lead_BHK" => $_POST['FlatBHK'],
                "LeadPurchasePurpose" => $_POST['FlatPurchasePurpose'],
                "LeadLocation" => $_POST['FlatLocation'],
                "LeadMinimumBudget" => $_POST['FlatMinimumPrice'],
                "LeadMaximumBudget" => $_POST['FlatMaximumPrice'],
                "LeadRequiredPeriod" => $_POST['FlatRequiredPeriod'],
                "LeadAmities" => $Amities,
                "LeadCity" => $_POST['ResidentialCity'],
                "LeadState" => $_POST['ResidentialState'],
                "LeadPincode" => $_POST['ResidentialPincode'],
                "LeadCreatedAt" => CURRENT_DATE_TIME,
                "LeadUpdatedAt" => CURRENT_DATE_TIME
            ];
        } elseif ($_POST['ResidentialPropertyType'] == "VILLA") {
            $AmitiesValues = isset($_POST['VillaAmities']) ? $_POST['VillaAmities'] : [];
            $AmitiesCode = implode(',', $AmitiesValues);
            $Amities = preg_replace('/[^0-9,]/', '', $AmitiesCode);
            $ResidentialDetails = [
                "LeadMainId" => $LeadMainId,
                "LeadPropertyType" => $_POST['ResidentialPropertyType'],
                "LeadPropertyArea" => $_POST['VillaAreaUnit'] . " - " . $_POST['VillaAreaType'],
                "Lead_BHK" => $_POST['VillaBHK'],
                "LeadPurchasePurpose" => $_POST['VillaPurchasePurpose'],
                "LeadLocation" => $_POST['VillaLocation'],
                "LeadMinimumBudget" => $_POST['VillaMinimumPrice'],
                "LeadMaximumBudget" => $_POST['VillaMaximumPrice'],
                "LeadRequiredPeriod" => $_POST['VillaRequiredPeriod'],
                "LeadAmities" => $Amities,
                "LeadCity" => $_POST['ResidentialCity'],
                "LeadState" => $_POST['ResidentialState'],
                "LeadPincode" => $_POST['ResidentialPincode'],
                "LeadCreatedAt" => CURRENT_DATE_TIME,
                "LeadUpdatedAt" => CURRENT_DATE_TIME
            ];
        } elseif ($_POST['ResidentialPropertyType'] == "FARMHOUSE") {
            $AmitiesValues = isset($_POST['FarmhouseAmities']) ? $_POST['FarmhouseAmities'] : [];
            $AmitiesCode = implode(',', $AmitiesValues);
            $Amities = preg_replace('/[^0-9,]/', '', $AmitiesCode);
            $ResidentialDetails = [
                "LeadMainId" => $LeadMainId,
                "LeadPropertyType" => $_POST['ResidentialPropertyType'],
                "LeadPropertyArea" => $_POST['FarmhouseAreaUnit'] . " - " . $_POST['FarmhouseAreaType'],
                "Lead_BHK" => $_POST['FarmhouseBHK'],
                "LeadPurchasePurpose" => $_POST['FarmhousePurchasePurpose'],
                "LeadLocation" => $_POST['FarmhouseLocation'],
                "LeadMinimumBudget" => $_POST['FarmhouseMinimumPrice'],
                "LeadMaximumBudget" => $_POST['FarmhouseMaximumPrice'],
                "LeadRequiredPeriod" => $_POST['FarmhouseRequiredPeriod'],
                "LeadAmities" => $Amities,
                "LeadCity" => $_POST['ResidentialCity'],
                "LeadState" => $_POST['ResidentialState'],
                "LeadPincode" => $_POST['ResidentialPincode'],
                "LeadCreatedAt" => CURRENT_DATE_TIME,
                "LeadUpdatedAt" => CURRENT_DATE_TIME
            ];
        } elseif ($_POST['ResidentialPropertyType'] == "KOTHI") {
            $AmitiesValues = isset($_POST['KothiAmities']) ? $_POST['KothiAmities'] : [];
            $AmitiesCode = implode(',', $AmitiesValues);
            $Amities = preg_replace('/[^0-9,]/', '', $AmitiesCode);
            $ResidentialDetails = [
                "LeadMainId" => $LeadMainId,
                "LeadPropertyType" => $_POST['ResidentialPropertyType'],
                "LeadPropertyArea" => $_POST['KothiAreaUnit'] . " - " . $_POST['KothiAreaType'],
                "Lead_BHK" => $_POST['KothiBHK'],
                "LeadPurchasePurpose" => $_POST['KothiPurchasePurpose'],
                "LeadLocation" => $_POST['KothiLocation'],
                "LeadMinimumBudget" => $_POST['KothiMinimumPrice'],
                "LeadMaximumBudget" => $_POST['KothiMaximumPrice'],
                "LeadRequiredPeriod" => $_POST['KothiRequiredPeriod'],
                "LeadAmities" => $Amities,

                "LeadCity" => $_POST['ResidentialCity'],
                "LeadState" => $_POST['ResidentialState'],
                "LeadPincode" => $_POST['ResidentialPincode'],
                "LeadCreatedAt" => CURRENT_DATE_TIME,
                "LeadUpdatedAt" => CURRENT_DATE_TIME
            ];
        } else {
            $ResidentialDetails = [
                "LeadMainId" => $LeadMainId,
                "LeadPropertyType" => null,
                "LeadPropertyArea" => null,
                "Lead_BHK" => null,
                "LeadPurchasePurpose" => null,
                "LeadLocation" => null,
                "LeadMinimumBudget" => null,
                "LeadMaximumBudget" => null,
                "LeadRequiredPeriod" => null,
                "LeadAmities" => null,
                "LeadCity" => $_POST['ResidentialCity'],
                "LeadState" => $_POST['ResidentialState'],
                "LeadPincode" => $_POST['ResidentialPincode'],
                "LeadCreatedAt" => CURRENT_DATE_TIME,
                "LeadUpdatedAt" => CURRENT_DATE_TIME,
            ];
        }
        $ResidentialLead = INSERT("residential_leads", $ResidentialDetails);
        // Save lead requirements
        $LeadRequirementCreatedAt = CURRENT_DATE_TIME; // Fix undefined variable
        $LeadRequirementStatus = "1";
        $LeadMainId = FETCH("SELECT * FROM leads ORDER BY LeadsId DESC LIMIT 1", "LeadsId");
        if (isset($_POST['ResidentialLeadRequirementDetails'])) {
            foreach ($_POST['ResidentialLeadRequirementDetails'] as $LeadReq) {
                $LeadRequirementDetails = $LeadReq;
                $lead_requirements = [
                    "LeadMainId" => $LeadMainId,
                    "LeadRequirementDetails" => $LeadRequirementDetails,
                    "LeadRequirementCreatedAt" => CURRENT_DATE_TIME,
                    "LeadRequirementStatus" => $LeadRequirementStatus,
                ];
                $save = INSERT("lead_requirements", $lead_requirements);
            }
        }
        RESPONSE($ResidentialLead, "Leads Saved Successfully", "Leads Not Saved Successfully");
    }
} else if (isset($_POST['CommercialLead'])) {
    $phone = $_POST['CommercialCustomerPhoneNumber'];
    $CheckPhone = CHECK("SELECT * FROM leads WHERE LeadPersonPhoneNumber='$phone'");
    if ($CheckPhone) {
        LOCATION("warning", "Phone Number already Exist", APP_URL . "/leads/add.php");
    } else {
        $NewLead = [
            "LeadSalutations" => $_POST['CommercialSalutation'],
            "LeadPersonFullname" => $_POST['CommercialCustomerName'],
            "LeadPersonPhoneNumber" => $_POST['CommercialCustomerPhoneNumber'],
            "LeadPersonEmailId" => $_POST['CommercialCustomeremailId'],
            "LeadPersonAddress" => $_POST['CommercialCustomerAddress'],
            "LeadPersonCreatedBy" => LOGIN_UserId,
            "LeadPersonStatus" => $_POST['CommercialLeadPersonStatus'],
            "LeadPersonSource" => $_POST['CommercialLeadPersonSource'],
            "LeadPersonManagedBy" => $_POST['CommercialLeadPersonManagedBy'],
            "LeadPriorityLevel" => $_POST['CommercialLeadPriorityLevel'],
            "LeadPersonCreatedAt" => CURRENT_DATE_TIME,
            "LeadPersonNotes" => SECURE($_POST['CommercialRemark'], "e"),
            "LeadPersonLastUpdatedAt" => CURRENT_DATE_TIME,
            "LeadType" => "COMMERCIAL",
        ];
        $SAVE = INSERT("leads", $NewLead);
        // Get Lead id
        $LeadsId = FETCH("SELECT * FROM leads ORDER BY LeadsId DESC LIMIT 1", "LeadsId");
        $LeadMainId = $LeadsId;

        $AmitiesValues = isset($_POST['CommercialAmities']) ? $_POST['CommercialAmities'] : [];
        $AmitiesCode = implode(',', $AmitiesValues);
        $Amities = preg_replace('/[^0-9,]/', '', $AmitiesCode);
        //save commercial deatils
        $Commercial = [
            "LeadMainId" => $LeadMainId,
            "LeadPropertyArea" => $_POST['CommercialAreaUnit'] . " - " . $_POST['CommercialUnitType'],
            "NumberOfCabin" => $_POST['CommercialCabin'],
            "NumberOfSiting" => $_POST['CommercialSiting'],
            "FurnishedType" => $_POST['CommercialPropertyFurnished'],
            "PurchasePurpose" => $_POST['CommercialPurchasePurpose'],
            "LeadMinimumBudget" => $_POST['CommercialMinimumPrice'],
            "LeadMaximumBudget" => $_POST['CommercialMaximumPrice'],
            "RentDetails" => $_POST['CommercialRentDetails'],
            "Reception" => $_POST['CommercialReception'],
            "NightShift" => $_POST['CommercialNightShift'],
            "Panetry" => $_POST['CommercialPanetry'],
            "Location" => $_POST['CommercialLoaction'],
            "Amities" => $Amities,
            "Washroom" => $_POST['CommercialWashroom'],
            "RequiredPeriod" => $_POST['CommercialPurchaseDate'],
            "LeadCity" => $_POST['CommercialCity'],
            "LeadState" => $_POST['CommercialState'],
            "LeadPincode" => $_POST['CommercialPincode'],
            "LeadCreatedAt" => CURRENT_DATE_TIME,
            "LeadUpdatedAt" => CURRENT_DATE_TIME,
        ];
        $SaveLead = INSERT("commercial_leads", $Commercial);
        // Save lead requirements
        $LeadRequirementCreatedAt = CURRENT_DATE_TIME;
        $LeadRequirementStatus = "1";
        $LeadMainId = FETCH("SELECT * FROM leads ORDER BY LeadsId DESC LIMIT 1", "LeadsId");
        if (isset($_POST['CommercialLeadRequirementDetails'])) {
            foreach ($_POST['CommercialLeadRequirementDetails'] as $LeadReq) {
                $LeadRequirementDetails = $LeadReq;
                $lead_requirements = [
                    "LeadMainId" => $LeadMainId,
                    "LeadRequirementDetails" => $LeadRequirementDetails,
                    "LeadRequirementCreatedAt" => CURRENT_DATE_TIME,
                    "LeadRequirementStatus" => $LeadRequirementStatus,
                ];
                $save = INSERT("lead_requirements", $lead_requirements);
            }
        }

        RESPONSE($SaveLead, "Leads Saved Successfully", "Leads Not Saved Successfully");
    }
} elseif (isset($_POST['AgricultureLead'])) {
    $phone = $_POST['AgricultureCustomerPhoneNumber'];
    $CheckPhone = CHECK("SELECT * FROM leads WHERE LeadPersonPhoneNumber='$phone'");
    if ($CheckPhone) {
        LOCATION("warning", "Phone Number already Exist", APP_URL . "/leads/add.php");
    } else {
        $NewLeads = [
            "LeadSalutations" => $_POST['AgricultureSalutation'],
            "LeadPersonFullname" => $_POST['AgricultureCustomerName'],
            "LeadPersonPhoneNumber" => $_POST['AgricultureCustomerPhoneNumber'],
            "LeadPersonEmailId" => $_POST['AgricultureCustomeremailId'],
            "LeadPersonAddress" => $_POST['CommercialCustomerAddress'],
            "LeadPersonCreatedBy" => LOGIN_UserId,
            "LeadPersonStatus" => $_POST['AgricultureLeadPersonStatus'],
            "LeadPersonSource" => $_POST['AgricultureLeadPersonSource'],
            "LeadPersonManagedBy" => $_POST['AgricultureLeadPersonManagedBy'],
            "LeadPriorityLevel" => $_POST['AgricultureLeadPriorityLevel'],
            "LeadPersonCreatedAt" => CURRENT_DATE_TIME,
            "LeadPersonNotes" => SECURE($_POST['AgricultureRemark'], "e"),
            "LeadPersonLastUpdatedAt" => CURRENT_DATE_TIME,
            "LeadType" => "AGRICULTURE",
        ];
        $SAVE = INSERT("leads", $NewLeads);
        // Get Lead id
        $LeadsId = FETCH("SELECT * FROM leads ORDER BY LeadsId DESC LIMIT 1", "LeadsId");
        $LeadMainId = $LeadsId;

        // save agriculture lead details
        $AmitiesValues = isset($_POST['AgricultureAmities']) ? $_POST['AgricultureAmities'] : [];
        $AmitiesCode = implode(',', $AmitiesValues);
        $Amities = preg_replace('/[^0-9,]/', '', $AmitiesCode);

        $AgricultureLeadDetails = [
            "LeadMainId" => $LeadMainId,
            "LeadPropertyArea" => $_POST['AgricultureAreaUnit'] . " - " . $_POST['AgricultureUnitType'],
            "LandType" => $_POST['AgricultureLandType'],
            "LandPrice" => $_POST['AgricultureLandPrice'],
            "PurchasePurpose" => $_POST['AgriculturePurchasePurpose'],
            "Location" => $_POST['AgricultureLoaction'],
            "Amities" => $Amities,
            "RequiredPeriod" => $_POST['AgriculturePurchaseDate'],
            "LeadCity" => $_POST['AgricultureCity'],
            "LeadState" => $_POST['AgricultureState'],
            "LeadPincode" => $_POST['AgriculturePincode'],
            "LeadCreatedAt" => CURRENT_DATE_TIME,
            "LeadUpdatedAt" => CURRENT_DATE_TIME,
        ];

        $Savedeatils = INSERT("agriculture_leads", $AgricultureLeadDetails);
        // Save lead requirements
        $LeadRequirementCreatedAt = CURRENT_DATE_TIME;
        $LeadRequirementStatus = "1";
        $LeadMainId = FETCH("SELECT * FROM leads ORDER BY LeadsId DESC LIMIT 1", "LeadsId");
        if (isset($_POST['AgricultureLeadRequirementDetails'])) {
            foreach ($_POST['AgricultureLeadRequirementDetails'] as $LeadReq) {
                $LeadRequirementDetails = $LeadReq;
                $lead_requirements = [
                    "LeadMainId" => $LeadMainId,
                    "LeadRequirementDetails" => $LeadRequirementDetails,
                    "LeadRequirementCreatedAt" => CURRENT_DATE_TIME,
                    "LeadRequirementStatus" => $LeadRequirementStatus,
                ];
                $save = INSERT("lead_requirements", $lead_requirements);
            }
        }
        RESPONSE($Savedeatils, "Leads Saved Successfully", "Leads Not Saved Successfully");
    }
}
