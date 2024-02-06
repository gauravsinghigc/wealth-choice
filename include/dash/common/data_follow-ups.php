<li>
    <span class='text-center bg-dark text-white rounded'>
        <span class=''>
            <?php if (DATE_FORMATES("h:i A", $F->DataFollowUpUpdatedAt) == "NA") { ?>
                <span class='h5'>
                    No Call
                </span><br>
            <?php } else { ?>
                <span class="p-t-3">
                    <span class='h6 text-success'><i class='fa fa-phone'></i></span><br>
                    <span class='small'>scheduled for </span><br>
                    <span class='h5'>
                        <?php echo DATE_FORMATES("h:i A", $F->DataFollowUpTime); ?>
                    </span><br>
                    <span>
                        <?php echo DATE_FORMATES("d M, Y", $F->DataFollowUpDate); ?>
                    </span>
                </span>
            <?php } ?>
        </span>
    </span>
    <p style='line-height:1.1rem !important;margin-top:0.7rem !important;'>
        <a href="<?php echo APP_URL; ?>/data/details/index.php?DataId=<?php echo SECURE($F->DataFollowMainId, "e"); ?>&alert=true">
            <span>
                <span style="font-size:1.1rem !important;font-weight:600 !important;">
                    <?php echo FETCH("SELECT DataSalutations FROM data where DataId='" . $F->DataFollowMainId . "'", "DataSalutations"); ?>
                    <?php echo FETCH("SELECT DataPersonFullname FROM data where DataId='" . $F->DataFollowMainId . "'", "DataPersonFullname"); ?><br>
                    <span style="font-size:0.95rem !important;font-weight:500 !important;" class='text-info'>
                        <i class='fa fa-phone-square'></i>
                        <?php echo FETCH("SELECT DataPersonPhoneNumber FROM data where DataId='" . $F->DataFollowMainId . "'", "DataPersonPhoneNumber"); ?>
                    </span>
                </span><br>
                <span class='text-danger bold h6'>
                    <span class='pull-left'><?php echo $F->DataFollowStatus; ?></span>
                    <span class='pull-right w-50 text-right small'>
                        <i class='fa fa-clock text-warning'></i> <?php echo GetMinutes($F->DataFollowUpTime, date("h:i A")); ?>
                    </span>
                </span>
                <br><br>
                <?php if ($F->DataFollowStatus == "Follow Up" or $F->DataFollowStatus == "follow Up" || $F->DataFollowStatus == "FollowUp" || $F->DataFollowStatus == "FOLLOW UP") { ?>
                    <?php if (DATE_FORMATES("d M, Y", $F->DataFollowUpDate) != "No Update") { ?>
                        <span class='fs-11 text-grey'>
                            <?php echo $F->DataFollowCurrentStatus; ?> @
                            <span class="text-success"><?php echo DATE_FORMATES("d M, Y", $F->DataFollowUpDate); ?>
                                <?php echo $F->DataFollowUpTime; ?>
                            </span>
                        </span>
                    <?php } ?>
                    <span class="text-grey">
                    <?php } else { ?>
                        <span class="text-grey">
                            <?php echo $F->DataFollowStatus; ?>
                        <?php } ?>
                        </span>
                    </span><br>
                    <span style="font-size:0.9rem;">
                        <span class="text-black"><?php echo $F->DataFollowUpDescriptions; ?></span>
                        <br>
                        <i style="font-size:0.8rem;" class='text-warning pull-right'>By
                            <?php echo FETCH("SELECT UserFullName FROM users where UserId='" . $F->DataFollowUpHandleBy . "'", "UserFullName"); ?> -
                            <?php echo FETCH("SELECT UserEmpJoinedId FROM user_employment_details where UserMainUserId='" . $F->DataFollowUpHandleBy . "'", "UserEmpJoinedId"); ?>
                        </i>
                    </span>
            </span>
        </a>
    </p>
</li>