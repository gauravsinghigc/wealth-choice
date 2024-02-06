<div class="w-50 lead-lists" loading="lazy">
    <div class="list-record bg-light">
        <a target="_blank" class="w-100" href="<?php echo APP_URL; ?>/data/details/index.php?DataId=<?php echo SECURE($leads->DataId, "e"); ?>">
            <p class="data-list w-100" loading="lazy" style="line-height:1rem;margin-bottom:0.5rem !important;">
                <span>
                    <span class='count pull-right'><?php echo $Count; ?></span>
                    <span class="bold h5">
                        <b> <?php echo LimitText($leads->DataPersonFullname, 0, 25); ?><br></b>
                        <?php echo $leads->DataPersonPhoneNumber; ?>
                    </span>
                    <br>
                    <span class='text-danger h6'>
                        <?php echo LeadStage($leads->DataPersonStatus); ?>
                        <br>
                        <span class='text-gray h5'>
                            <?php echo FETCH("SELECT * FROM data_lead_followups where DataFollowMainId='" . $leads->DataId . "' ORDER BY DataFollowUpId DESC", "DataFollowCurrentStatus"); ?>
                        </span>
                    </span>
                    <span class="italic text-info italic h6">
                        <?php $Data = FETCH("SELECT * FROM data_lead_requirements where DataMainId='" . $leads->DataId . "'", "DataRequirementDetails");
                        $project = FETCH("SELECT * FROM projects WHERE ProjectsId='$Data'", "ProjectName");
                        if ($Data != null) {
                            echo "<br>For " . $project;
                        } ?>
                    </span>
                    <br>
                    <span>
                        <span class="italic text-warning"><?php echo $leads->DataPersonSource; ?></span><br>
                        <span class="text-grey"> By <?php echo FETCH("SELECT * FROM users where UserId='" . $leads->DataPersonManagedBy . "'", "UserFullName"); ?></span>
                        <span class="pull-right" style="margin-top:-5.5rem !important;">
                            <?php echo LeadStatus($leads->DataPriorityLevel); ?><br>
                            <input type="checkbox" class="pull-right form-control form-control-md mt-2" name="selected_data_for_transfer[]" style="margin-top:0.1rem;" value="<?php echo $leads->DataId; ?>">
                        </span>
                    </span>
                </span>
            </p>
        </a>
    </div>
</div>