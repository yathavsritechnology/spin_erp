<div id="dvContainer">
<link rel="stylesheet" href="css/print.css" type="text/css" />
<div style="height:280mm;width:190mm;margin:0px;display:table;page-break-inside:avoid; page-break-after:auto;float:left;overflow:scroll;border:0 solid #000;padding:10px 5px 10px 50px;">
<!--<div class="page">-->
	<table border="0" cellpadding="0" cellspacing="0" style="margin-bottom:0px;page-break-inside:avoid; page-break-after:auto;width:100%;display:table;font-family:verdana;border-collapse:collapse;height:100%;">
		<thead style="height:0">
			<tr>
				<td colspan="2" style="font-size:21px;font-weight:bold;text-align:center;">TAX INVOICE</td>
			</tr>
			<tr style="border:1px solid #000;">
				<td valign="top" style="padding-top:0;text-align:center;padding-bottom:0;width:50%;border-right:1px solid #000;">
					<table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse;border:0px solid #000;font-family:verdana;font-size:12px;width:100%;line-height:20px;">
						<tr style="border-bottom:1px solid #000;height:100px;">
							<td valign="top" style="padding:2px;"><?= $this->CompanyHeader ?></td>
						</tr>
						<tr style="border-bottom:1px solid #000;">
							<td valign="top" style="padding:2px;height:120px;">
								<b class="fontsize12">Billing To : <br /><?= $this->B_Name ?></b><br />
								<?= $this->B_Address ?><br />
								<b><?= $this->B_GSTId ?></b><br />
								<?= $this->B_StateName ?>&nbsp;<?= $this->B_StateCode ?>
							</td>
						</tr>
                        <tr style="border-bottom:0px solid #000;">
                            <td valign="top" style="padding:2px;height:120px;">
                                <b class="fontsize12">Shipping To : <br /><?= $this->S_Name ?></b><br />
                                <?= $this->S_Address ?><br />
                                <b><?= $this->S_GSTId ?></b><br />
                                <?= $this->S_StateName ?>&nbsp;<?= $this->S_StateCode ?>
                            </td>
                        </tr>
					</table>
				</td>
				<td valign="top" style="padding-top:0;text-align:center;padding-bottom:0;width:50%;">
					<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;font-family:verdana;font-size:12px;width:100%;height:100%;">
						<tr style="border-bottom:1px solid #000;height:30px;">
							<td valign="top" style="border-right:1px solid #000;width:50%;padding:2px;">Invoice No :<br /><b><?= $this->SalesNo ?></b></td>
							<td valign="top" style="width:50%;padding:2px;">Dated :<br /><b><?= $this->BillDate ?></b></td>
						</tr>
						<tr style="border-bottom:1px solid #000;height:30px;">
							<td valign="top" style="border-right:1px solid #000;width:50%;padding:2px;">Delivery Note :<br /><b><?= $this->DelNoteNo; ?></b></td>
							<td valign="top" style="width:50%;padding:2px;">Mode/Terms or Payment :<br /><b><?= $this->ModeTerms; ?></b></td>
						</tr>
						<tr style="border-bottom:1px solid #000;height:30px;">
							<td valign="top" style="border-right:1px solid #000;width:50%;padding:2px;">Supplier Ref :<br /><b></b></td>
							<td valign="top" style="width:50%;padding:2px;">Other Reference(s) :<br /><b></b></td>
						</tr>
						<tr style="border-bottom:1px solid #000;height:30px;">
							<td valign="top" style="border-right:1px solid #000;width:50%;padding:2px;">Buyer's Order No :<br /><b><?= $this->PartyPoNo; ?></b></td>
							<td valign="top" style="width:50%;padding:2px;">Dated :<br /><b><?= $this->PartyDcDate; ?></b></td>
						</tr>
						<tr style="border-bottom:1px solid #000;height:30px;">
							<td valign="top" style="border-right:1px solid #000;width:50%;padding:2px;">Dispatch Document No :<br /><b></b></td>
							<td valign="top" style="width:50%;padding:2px;">Delivery Note Date :<br /><b></b></td>
						</tr>
						<tr style="border-bottom:1px solid #000;height:30px;">
							<td valign="top" style="border-right:1px solid #000;width:50%;padding:2px;">Dispatch Through :<br /><b></b></td>
							<td valign="top" style="width:50%;padding:2px;">Destination :<br /><b></b></td>
						</tr>
						<tr style="border-bottom:1px solid #000;height:30px;">
							<td valign="top" style="border-right:1px solid #000;width:50%;padding:2px;">Transport :<br /><b><?= $this->TransportMode ?></b></td>
							<td valign="top" style="width:50%;padding:2px;">Vehicle No :<br /><b><?= $this->VehicleNo ?></b></td>
						</tr>
						<tr style="height:30px;">
							<td style="height:10px;padding:2px;" valign="top" colspan="2">Remarks:<br /><?= $this->SaleRemarks; ?></td>
						</tr>
					</table>
				</td>
			</tr>
		</thead>
		<tbody style="height:0">
			<tr class="" style="height:0">
				<td colspan="2" valign="top" style="margin:0;padding:0;border-left:1px solid #000;border-right:1px solid #000;border-bottom:1px solid #000;">
					<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;font-family:verdana;font-size:12px;width:100%;height:100%;">
						<thead>
						<tr style="border-bottom:1px solid #000;height:15px;">
							<td style="border-right:1px solid #000;padding:2px;text-align:center;">SL<br />NO</td>
							<td style="border-right:1px solid #000;padding:2px;text-align:center;">Description of Goods</td>
							<td style="border-right:1px solid #000;padding:2px;text-align:center;">HSN/SAC</td>
							<td style="border-right:1px solid #000;padding:2px;text-align:center;">Quantity</td>
							<td style="border-right:1px solid #000;padding:2px;text-align:center;">Rate</td>
							<td style="border-right:1px solid #000;padding:2px;text-align:center;">UOM</td>
							<td style="text-align:center;">Amount</td>
						</tr>
						</thead>
						<tbody>
                        <?php
                        foreach($this->row_data as $row)
                        {
                        extract($row);
                        ?>
						<tr style="border-bottom:0px solid #000;height:15px;">
							<td style="border-right:1px solid #000;padding:2px;"><?= $n ?></td>
							<td style="border-right:1px solid #000;padding:2px;"><b><?= $ItemName ?></b></td>
							<td style="border-right:1px solid #000;padding:2px;"><?= $rHsnCode ?></td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"><b><?= $rQty ?></b></td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"><b><?= $rRate ?></b></td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"><?= $rUomName; ?></td>
							<td style="text-align:right;padding:2px;"><b><?= $rTotal ?></b></td>
						</tr>
                        <?php
                        }
                        ?>
						<tr style="border-bottom:0px solid #000;height:25px;">
							<td style="border-right:1px solid #000;padding:2px;">&nbsp;</td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td></td>
						</tr>
						<tr style="height:15px;">
							<td style="border-right:1px solid #000;">&nbsp;</td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"><b></b></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;padding:5px 2px 5px 2px;border-top:1px solid #000;border-bottom:1px solid #000;"><b><?= $this->_Total; ?></b></td>
						</tr>
						<tr style="height:15px;">
							<td style="border-right:1px solid #000;">&nbsp;</td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"><b>SGST</b></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;padding:2px;"><b><?= $this->tSgstValue; ?></b></td>
						</tr>
						<tr style="border-bottom:0px solid #000;height:15px;">
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"><b>CGST</b></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;padding:2px;"><b><?= $this->tCgstValue; ?></b></td>
						</tr>
						<?php
						if($this->RoundOff != 0){
						?>
						<tr style="border-bottom:0px solid #000;height:15px;">
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"><b>Round Off</b></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;padding:2px;"><b><?= $this->RoundOff; ?></b></td>
						</tr>
						<?php
						}
						$n = 0;
						for($i=1; $i < 5; $i++){
							$n += 1;
						?>
						<tr style="border-bottom:0 solid #000;height:15px;page-break-inside:avoid; page-break-after:auto">
							<td style="border-right:1px solid #000;padding:2px;">&nbsp;</td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td></td>
						</tr>
						<?php
						}
						?>
						</tbody>
						<tfoot>
						<tr style="border-top:1px solid #000;height:15px;page-break-inside:avoid; page-break-after:auto;">
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;text-align:right;"><b>Total</b></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;padding:2px;border-right:1px solid #000;"><b><?= sprintf("%0.3f", $this->TotalQty); ?></b></td>
							<td style="text-align:right;padding:2px;border-right:1px solid #000;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="text-align:right;padding:2px;font-weight:bold;"><?= $this->GrandTotal; ?></td>
						</tr>
						</tfoot>
					</table>
				</td>
			</tr>
			<tr class="border-bottom:0px solid #000;">
				<td colspan="2" valign="top" style="margin:0;padding:0;border-left:1px solid #000;border-right:1px solid #000;border-bottom:1px solid #000;">
					<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;font-family:verdana;font-size:12px;width:100%;height:auto;">
						<tr style="border-bottom:0px solid #000;">
							<td style="width:90%;padding:2px;">Amount Chargeable (in words)</td>
							<td style="width:10%;padding:2px;">E. & O.E</td>
						</tr>
						<tr>
							<td colspan="2" style="font-size:16px;font-weight:bold;padding:2px;"><?= $this->WordsAmount; ?></td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" valign="top" style="margin:0;padding:0;border-left:1px solid #000;border-right:1px solid #000;border-bottom:1px solid #000;">
					<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;font-family:verdana;font-size:12px;width:100%;height:100%;page-break-inside:avoid; page-break-after:auto;">
						<tr>
							<td style="border-right:1px solid #000;text-align: center;padding:2px;">HSN/SAC</td>
							<td style="border-right:1px solid #000;text-align: center;padding:2px;">Taxable Value</td>
							<td style="border-right:1px solid #000;text-align: center;padding:2px;" colspan="2">CGST</td>
							<td style="border-right:0px solid #000;text-align: center;padding:2px;" colspan="2">SGST</td>
							<!--<td colspan="2">IGST</td>-->
						</tr>
						<tr style="border-bottom:1px solid #000;">
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;padding:2px;"></td>
							<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: center;padding:2px;">Rate</td>
							<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: center;padding:2px;">Amount</td>
							<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: center;padding:2px;">Rate</td>
							<td style="border-right:0px solid #000;border-top:1px solid #000;text-align: center;padding:2px;">Amount</td>
							<!--<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: center;">Rate</td>
							<td style="border-top:1px solid #000;text-align: center;">Amount</td>-->
						</tr>
						<?php
						foreach($this->data_tax as $row_tax){
						extract($row_tax);
						?>
						<tr style="border-bottom:1px solid #000;">
							<td style="border-right:1px solid #000;padding:2px;"><?= $tHsnCode ?></td>
							<td style="border-right:1px solid #000;text-align:right;padding:2px;"><?= $tTaxableValue ?></td>
							<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: right;padding:2px;"><?= $tCgstPer ?>%</td>
							<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: right;padding:2px;"><?= $tCgstValue ?></td>
							<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: right;padding:2px;"><?= $tSgstPer ?>%</td>
							<td style="border-right:0px solid #000;border-top:1px solid #000;text-align: right;padding:2px;"><?= $tSgstValue ?></td>
							<!--<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: right;">Rate</td>
							<td style="border-top:1px solid #000;text-align: right;">Amount</td>-->
						</tr>
						<?php
						}
						?>
						<tr>
							<td style="border-right:1px solid #000;text-align:right;font-weight:bold;padding:2px;">Total</td>
							<td style="border-right:1px solid #000;text-align:right;font-weight:bold;padding:2px;"><?= $this->TaxValueAmt; ?></td>
							<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: right;padding:2px;"></td>
							<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: right;font-weight:bold;padding:2px;"><?= $this->CgstAmt; ?></td>
							<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: right;padding:2px;"></td>
							<td style="border-right:0px solid #000;border-top:1px solid #000;text-align: right;font-weight:bold;padding:2px;"><?= $this->SgstAmt; ?></td>
							<!--<td style="border-right:1px solid #000;border-top:1px solid #000;text-align: right;">Rate</td>
							<td style="border-top:1px solid #000;text-align: right;">Amount</td>-->
						</tr>
					</table>
				</td>
			</tr>
			<tr class="border-bottom:0px solid #000;">
				<td colspan="2" valign="top" style="margin:0;padding:0;border-left:1px solid #000;border-right:1px solid #000;border-bottom:0px solid #000;">
					<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;font-family:verdana;font-size:12px;width:100%;height:auto;">
						<tr style="border-bottom:0px solid #000;"><td style="width:100%;padding:2px;">Tax Amount (in words) : <b><?= $this->WordsTaxAmount; ?></b></td></tr>
						<tr style="border-bottom:0px solid #000;"><td style="width:100%;padding-top:10px;">Company's PAN : <b><?= $this->Comp_PANno; ?></b><br />Declaration : <br />Goods once sold can't be taken back. Subject to Tirupur Jurisdiction. Interest @ 24% will be charged, if nor paid within 30 days.</td></tr>
					</table>
				</td>
			</tr>
			<tr class="border-bottom:0px solid #000;">
				<td colspan="2" valign="bottom" style="border-left:1px solid #000;border-right:1px solid #000;border-bottom:1px solid #000;bottom:0;height:100px;">
					<table border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;font-family:verdana;font-size:12px;width:100%;">
						<tr style="border-bottom:0px solid #000;">
							<td valign="bottom" style="width:30%;padding:2px;border-top:1px solid #000;text-align:center;">Prepared By</td>
							<td valign="bottom" style="width:30%;padding:2px;border-top:1px solid #000;text-align:center;">Checked By</td>
							<td style="width:40%; text-align:right;padding:2px;border-top:1px solid #000;border-left:1px solid #000;">for <b><?= $this->CompCompanyName; ?></b><br /><br /><br /><br />Authorised Signatory</td>
						</tr>
					</table>
				</td>
			</tr>
		</tbody>
		<tfoot>
			<tr class="border-bottom:0px solid #000;">
				<td colspan="2" valign="top" style="margin:0;padding:0;border-left:0px solid #000;border-right:0px solid #000;border-bottom:0px solid #000;font-size:11px;text-align:center;">This is a Computer Generated Invoice</td>
			</tr>
		</tfoot>
	</table>
</div>
</div>