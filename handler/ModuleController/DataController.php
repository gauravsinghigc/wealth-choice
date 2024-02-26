<?php
//update lead requirements
if (isset($_POST['UpdateDataRequirements'])) {
    $LeadMainId = SECURE($_POST['UpdateLeadRequirements'], "d");

    $LeadRequirementCreatedAt = CURRENT_DATE_TIME;
    $LeadRequirementStatus = "1";
    foreach ($_POST['LeadRequirementDetails'] as $key => $LeadReq) {
        $LeadRequirementDetails = $LeadReq;
        $lead_requirements = [
            "LeadMainId" => $LeadMainId,
            "LeadRequirementDetails" => $LeadRequirementDetails,
            "LeadRequirementCreatedAt" => CURRENT_DATE_TIME,
            "LeadRequirementStatus" => $LeadRequirementStatus,
        ];

        $save = INSERT("lead_requirements", $lead_requirements);
    }

    RESPONSE($save, "Lead Requirements Updated Successfully", "Lead Requirements Not Updated Successfully");

    //delete lead requirements
} elseif (isset($_GET['delete_data_requirements'])) {
    $access_url = SECURE($_GET['access_url'], "d");
    $delete_lead_requirements = SECURE($_GET['delete_lead_requirements'], "d");

    if ($delete_lead_requirements == true) {
        $control_id = SECURE($_GET['control_id'], "d");
        $Delete = DELETE_FROM("lead_requirements",  "LeadRequirementID='$control_id'");
        RESPONSE($Delete, "Lead Requirement Deleted Successfully", "Lead Requirement Not Deleted Successfully");
    } else {
        RESPONSE(false, "Lead Requirement Not Deleted Successfully", "Lead Requirement Not Deleted Successfully");
    }

    //upload leads
} elseif (isset($_POST['UploadData'])) {
    $LeadUploadedFor = $_POST['LeadPersonManagedBy'];
    $LeadProjectsRef = $_POST['LeadProjectsRef'];
    $LeadType = $_POST['LeadType'];

    $FileName = explode(".", $_FILES['UploadedFile']['name']);
    if ($FileName[1] == "csv") {
        $handle = fopen($_FILES['UploadedFile']['tmp_name'], "r");
        $flag = true;

        while ($data = fgetcsv($handle)) {
            if ($flag) {
                $flag = false;
                continue;
            }

            if (array(null) !== $data) {
                $LeadsName = $data[0];
                $LeadsEmail = $data[2];
                $LeadsPhone = $data[1];
                $LeadsAddress = $data[3];
                $LeadsCity = $data[4];
                $LeadsProfession = $data[5];
                $LeadsSource = $data[6];

                // Check if the entry already exists in the database
                if (!entryExists($LeadsPhone)) {
                    $data = array(
                        "DataName" => $LeadsName,
                        "DataUploadBy" => LOGIN_UserId,
                        "DataUploadedfor" => $LeadUploadedFor,
                        "DataEmail" => $LeadsEmail,
                        "DataPhone" => $LeadsPhone,
                        "DataAddress" => $LeadsAddress,
                        "DataCity" => $LeadsCity,
                        "DataProfession" => $LeadsProfession,
                        "DataSource" => $LeadsSource,
                        "UploadedOn" => CURRENT_DATE_TIME,
                        "DataStatus" => "UPLOADED",
                        "DataProjectsRef" => $_POST['LeadProjectsRef'],
                        "LeadType" => $LeadType
                    );
                    $Save = INSERT("data_lead_uploads", $data);
                }
            }
        }
        fclose($handle);
    }
    RESPONSE($Save, "Data Uploaded successfully!", "Unable to upload Data at the moment!");

    //lead transfer
} elseif (isset($_POST['TransferData'])) {
    $LeadPersonManagedBy = $_POST['LeadPersonManagedBy'];
    $LeadPersonStatus = $_POST['LeadPersonStatus'];
    $LeadPriorityLevel = $_POST['LeadPriorityLevel'];
    if ($_POST['bulkselect'] != "null") {
        if ($_POST['bulkselect'] == "custom") {
            $totalleadcounts = $_POST['custom_value'];
        } else {
            $totalleadcounts = $_POST['bulkselect'];
        }
        $orderby = $_POST['sortedby'];
        $FETCH = _DB_COMMAND_("SELECT * FROM data_lead_uploads where DataStatus='UPLOADED' ORDER BY DataUploadId $orderby limit 0, $totalleadcounts", true);
        if ($FETCH != null) {
            foreach ($FETCH as $leads) {
                $leadsUploadId = $leads->DataUploadId;
                $data = array(
                    "DataPersonFullname" => $leads->DataName,
                    "DataPersonPhoneNumber" => $leads->DataPhone,
                    "DataPersonEmailId" => $leads->DataEmail,
                    "DataPersonAddress" => $leads->DataAddress,
                    "DataPersonCreatedBy" => LOGIN_UserId,
                    "DataPersonManagedBy" => $LeadPersonManagedBy,
                    "DataPersonStatus" => $LeadPersonStatus,
                    "DataPriorityLevel" => $LeadPriorityLevel,
                    "DataPersonSource" => $leads->DataSource,
                    "DataPersonCreatedAt" => CURRENT_DATE_TIME,
                    "DataPersonLastUpdatedAt" => CURRENT_DATE_TIME,
                    "DataType" => $leads->LeadType,
                );
                $save = INSERT("data", $data);
                $LeadMainId = FETCH("SELECT * FROM data where DataPersonPhoneNumber='" . $leads->DataPhone . "' ORDER BY DataId DESC limit 1", "DataId");

                $LeadRequirements = array(
                    "DataMainId" => $LeadMainId,
                    "DataRequirementDetails" => $leads->DataProjectsRef,
                    "DataRequirementStatus" => "1",
                    "DataRequirementCreatedAt" => CURRENT_DATE_TIME,
                    "DataRequirementNotes" => "",
                );
                $Save = INSERT("data_lead_requirements", $LeadRequirements);
                $Update = UPDATE("UPDATE data_lead_uploads SET DataStatus='TRANSFERRED' WHERE DataUploadId='$leadsUploadId'");
            }
        }
    } else {
        foreach ($_POST['Leads'] as $values) {
            $FETCH = _DB_COMMAND_("SELECT * FROM data_lead_uploads where DataUploadId='$values'", true);
            if ($FETCH != null) {
                foreach ($FETCH as $leads) {
                    $data = array(
                        "DataPersonFullname" => $leads->DataName,
                        "DataPersonPhoneNumber" => $leads->DataPhone,
                        "DataPersonEmailId" => $leads->DataEmail,
                        "DataPersonAddress" => $leads->DataAddress,
                        "DataPersonCreatedBy" => LOGIN_UserId,
                        "DataPersonManagedBy" => $LeadPersonManagedBy,
                        "DataPersonStatus" => $LeadPersonStatus,
                        "DataPriorityLevel" => $LeadPriorityLevel,
                        "DataPersonSource" => $leads->DataSource,
                        "DataPersonCreatedAt" => CURRENT_DATE_TIME,
                        "DataPersonLastUpdatedAt" => CURRENT_DATE_TIME,
                        "DataType" => $leads->LeadType,
                    );
                    $save = INSERT("data", $data);
                    $LeadMainId = FETCH("SELECT * FROM data where DataPersonPhoneNumber='" . $leads->DataPhone . "' ORDER BY DataId DESC limit 1", "DataId");

                    $LeadRequirements = array(
                        "DataMainId" => $LeadMainId,
                        "DataRequirementDetails" => $leads->DataProjectsRef,
                        "DataRequirementStatus" => "1",
                        "DataRequirementCreatedAt" => CURRENT_DATE_TIME,
                        "DataRequirementNotes" => "",
                    );
                    $Save = INSERT("data_lead_requirements", $LeadRequirements);
                    $Update = UPDATE("UPDATE data_lead_uploads SET DataStatus='TRANSFERRED' WHERE DataUploadId='$values'");
                }
            }
        }
    }

    RESPONSE($Save, "Data Transferred Successfully", "Data Not Transferred successfully!");

    //update leads 
} elseif (isset($_POST['UpdateData'])) {
    $LeadsId = SECURE($_POST['UpdateData'], "d");
    if (LOGIN_UserType == "Admin") {
        $LeadPersonManagedBy = $_POST['LeadPersonManagedBy'];
    } else {
        $LeadPersonManagedBy = SECURE($_POST['ManagedBy'], "d");
    }
    $PersonStatus = $_POST['LeadPersonStatus'];
    $check = CHECK("SELECT * FROM data WHERE DataId='$LeadsId' and DataType='DATA'");
    if ($check) {
        if ($PersonStatus == "Junk" || $PersonStatus == "Ringing" || $PersonStatus == "FRESH DATA") {
            $DataType = "DATA";
        } else {
            $DataType = "LEAD";
        }
    } else {
        $DataType = "LEAD";
    }
    $data = array(
        "DataPersonFullname" => $_POST['LeadPersonFullname'],
        "DataSalutations" => $_POST['LeadSalutations'],
        "DataPersonPhoneNumber" => $_POST['LeadPersonPhoneNumber'],
        "DataPersonEmailId" => $_POST['LeadPersonEmailId'],
        "DataPersonAddress" => $_POST['LeadPersonAddress'],
        "DataPersonLastUpdatedAt" => CURRENT_DATE_TIME,
        "DataPersonManagedBy" => $LeadPersonManagedBy,
        "DataPersonStatus" => $PersonStatus,
        "DataPriorityLevel" => $_POST['LeadPriorityLevel'],
        "DataPersonNotes" => SECURE($_POST['LeadPersonNotes'], "e"),
        "DataPersonSource" => $_POST['LeadPersonSource'],
        "DataType" => $DataType,
    );
    // echo "<pre>";
    // var_dump($data);
    // die;
    $Update = UPDATE_DATA("data", $data, "DataId='$LeadsId'");
    $LeadType = FETCH("SELECT * FROM data WHERE DataId='$LeadsId'", "DataType");
    RESPONSE($Update, "Data Details are updated successfully!", "Unable to update Data details at the moment!");
    //add leads status
} elseif (isset($_POST['AddDataStatus'])) {
    unset($_SESSION['EMAIL_REMINDER_STATUS']);

    if (isset($_POST['currentUrl'])) {
        $Url = $_POST['currentUrl'];
    } else {
        $Url = APP_URL . "/data/index.php";
    }
    $LeadFollowMainId = SECURE($_POST['DataFollowMainId'], "d");
    if ($_POST['LeadFollowStatus'] == "FRESH DATA") {
        $LeadFollowStatus = "FRESH DATA";
    } else {
        $LeadFollowStatus = FETCH("SELECT * FROM config_values where config_values.ConfigValueId='" . $_POST['LeadFollowStatus'] . "'", "ConfigValueDetails");
    }
    $LeadFollowCurrentStatus = $_POST['LeadFollowCurrentStatus'];
    $LeadPriorityLevel = $_POST['LeadPriorityLevel'];
    $LeadPersonSubStatus = $_POST['LeadFollowCurrentStatus'];

    if ($_POST['LeadFollowStatus'] == "50") {
        $LeadFollowUpDate = $_POST['LeadFollowUpDate'];
        $LeadFollowUpTime = date("h:i A", strtotime($_POST['LeadFollowUpTime']));
        $LeadFollowUpRemindNotes = $_POST['LeadFollowUpRemindNotes'];
        $LeadFollowUpRemindStatus = "ACTIVE";
    } else {
        $LeadFollowUpDate = "";
        $LeadFollowUpTime = "";
        $LeadFollowUpRemindNotes = $_POST['LeadFollowUpDescriptions'];
        $LeadFollowUpRemindStatus = "NONE";
    }

    $data = array(
        "DataFollowMainId" => $LeadFollowMainId,
        "DataFollowStatus" => $LeadFollowStatus,
        "DataFollowCurrentStatus" => $LeadFollowCurrentStatus,
        "DataFollowUpDate" => $LeadFollowUpDate,
        "DataFollowUpTime" => $LeadFollowUpTime,
        "DataFollowUpDescriptions" => $LeadFollowUpRemindNotes,
        "DataFollowUpHandleBy" => LOGIN_UserId,
        "DataFollowUpCreatedAt" => CURRENT_DATE_TIME,
        "DataFollowUpCallType" => $_POST['LeadFollowUpCallType'],
        "DataFollowUpRemindStatus" => $LeadFollowUpRemindStatus,
        "DataFollowUpRemindNotes" => $_POST['LeadFollowUpRemindNotes'],
        "DataFollowUpUpdatedAt" => CURRENT_DATE_TIME
    );
    $Update = UPDATE("UPDATE data_lead_followups SET DataFollowUpRemindStatus='INACTIVE' where DataFollowMainId='$LeadFollowMainId'");
    $Save = INSERT("data_lead_followups", $data);
    $check = CHECK("SELECT * FROM data WHERE DataId='$LeadFollowMainId' and DataType='DATA'");
    if ($check) {
        if ($PersonStatus == "Junk" || $PersonStatus == "Ringing" || $PersonStatus == "FRESH DATA" || $PersonStatus == "Fresh") {
            $DataType = "DATA";
        } else {
            $DataType = "LEAD";
        }
    } else {
        $DataType = "LEAD";
    }
    $Update = UPDATE("UPDATE data SET DataPersonStatus='$LeadFollowStatus', DataPersonSubStatus='$LeadPersonSubStatus', DataPriorityLevel='$LeadPriorityLevel', DataType='$DataType' , DataPersonLastUpdatedAt='" . CURRENT_DATE_TIME . "' where DataId='$LeadFollowMainId'");
    if ($Save == true) {
        $LeadFollowUpId = FETCH("SELECT * FROM data_lead_followups ORDER BY DataFollowUpId DESC limit 1", "DataFollowUpId");

        if (LOGIN_UserType == "Admin") {
            $NewLeadId = FETCH("SELECT * FROM data where DataId!='$LeadFollowMainId' and DataPersonStatus like '%FRESH DATA%' ORDER BY DataId ASC", "DataId");
        } else {
            $NewLeadId = FETCH("SELECT * FROM data where DataId!='$LeadFollowMainId' and DataPersonManagedBy='" . LOGIN_UserId . "' and DataPersonStatus like '%FRESH DATA%' ORDER BY DataId ASC", "DataId");
        }
        // $access_url = APP_URL . "/leads/details/?LeadsId=" . SECURE($NewLeadId, "e");

        //save call durations
        $StartTime = $_POST['StartTime'];

        $lead_followup_durations = [
            "DataCallFollowUpMainId" => $LeadFollowUpId,
            "Datacallstartat" => date('Y-m-d') . " " . date("h:i:s a", strtotime($StartTime)),
            "Datacallendat" => CURRENT_DATE_TIME,
            "Datacallcreatedat" => CURRENT_DATE_TIME
        ];
        INSERT("data_lead_followup_durations", $lead_followup_durations);
    }
    RESPONSE($Save, "Data Status & Follow Up Details are saved successfully!", "Unable to save Data status & follow up details at the moment!", $Url);

    //update reminder
} elseif (isset($_POST['UpdateDataFollowUp'])) {
    $LeadFollowUpId = SECURE($_POST['LeadFollowUpId'], "d");

    $data = array(
        "LeadFollowUpDescriptions" => $_POST['LeadFollowUpDescriptions'],
        "LeadFollowUpRemindStatus" => "INACTIVE",
        "LeadFollowUpUpdatedAt" => CURRENT_DATE_TIME
    );

    $Update = UPDATE_DATA("lead_followups", $data, "LeadFollowUpId='$LeadFollowUpId'");
    RESPONSE($Update, "Lead Follow Up Details are updated successfully!", "Unable to update follow up details at the moment!");

    //move leads from to 
} elseif (isset($_POST['MoveData'])) {
    $From = SECURE($_POST['FromData'], "d");
    $LeadPersonManagedBy = $_POST['DataPersonManagedBy'];
    $LeadPersonSubStatus = $_POST['DataPersonSubStatus'];
    $LeadPersonStatus = $_POST['DataPersonStatus'];
    if ($_POST['NumberOfLeads'] != 0) {
        $NumberOfLeads = $_POST['NumberOfLeads'];
        $OrderOfSelection = $_POST['OrderOfSelection'];
        $AllLeads = _DB_COMMAND_("SELECT * FROM data where DataPersonStatus like '%$LeadPersonStatus%' and DataPersonSubStatus like '%$LeadPersonSubStatus%' and DataPersonManagedBy='$From' ORDER by DataId $OrderOfSelection limit 0, $NumberOfLeads", true);
        if ($AllLeads != null) {
            foreach ($AllLeads as $Lead) {
                $data = array(
                    "DataPersonLastUpdatedAt" => CURRENT_DATE_TIME,
                    "DataPersonCreatedBy" => LOGIN_UserId,
                    "DataPersonManagedBy" => $LeadPersonManagedBy,
                );
                $Update = UPDATE_DATA("data", $data, "DataId='" . $Lead->DataId . "'");
            }
        }
    } else {
        foreach ($_POST['selected_data_for_transfer'] as $LeadsId) {
            $data = array(
                "DataPersonLastUpdatedAt" => CURRENT_DATE_TIME,
                "DataPersonCreatedBy" => LOGIN_UserId,
                "DataPersonManagedBy" => $LeadPersonManagedBy,
            );
            $Update = UPDATE_DATA("data", $data, "DataId='$LeadsId'");
        }
    }
    RESPONSE($Update, "Data Successfully Transeffered!", "Unable to Transfer Data!");
}
// upload data completed
// move data completed
// transfer data
// update data
//update requirements