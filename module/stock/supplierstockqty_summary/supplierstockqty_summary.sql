/*
* Category = 1 //Raw Material Stock Query.
*/
select mi.ItemId, mi.ItemCode, mi.ItemName, mcr.ColorName, coalesce(tci.MillsLotNo, "") as MillsLotNo, coalesce(tcid.SupplierBaleNo, "") as SupplierBaleNo,
coalesce(opnctn.opnCtnWt, 0) as opnCtnWt,
coalesce(opnmix.OpnMixIssWt, 0) as OpnMixIssWt,
(coalesce(opnctn.opnCtnWt, 0) - coalesce(opnmix.OpnMixIssWt, 0)) as OpnStk,
coalesce(CtnIn.CtnInWt, 0) as CtnInWt,
coalesce(MixOut.MixIssWt, 0) as MixIssWt,
(coalesce(opnctn.opnCtnWt, 0) + coalesce(CtnIn.CtnInWt, 0) - coalesce(opnmix.OpnMixIssWt, 0) - coalesce(MixOut.MixIssWt, 0)) as ClsStk
from mas_item as mi
left join mas_itemgroup as mig on mig.ItemGroupId=mi.ItemGroupId
left join mas_itemtype as mit on mit.ItemTypeId=mig.ItemTypeId
left join mas_color as mcr on mcr.ColorId=mi.ColorId
left join trn_cottoninwarddetail as tcid on tcid.ItemId=mi.ItemId
left join trn_cottoninward as tci on tci.CiId=tcid.CiId
left join(
  select sum(tcid.MillWt) as opnCtnWt, tci.MillsLotNo, tcid.SupplierBaleNo, tcid.ItemId from trn_cottoninwarddetail as tcid
  left join trn_cottoninward as tci on tci.CiId=tcid.CiId
  where tci.CiDate < "2018-03-15"
  group by tci.MillsLotNo, tcid.SupplierBaleNo, tcid.ItemId
) as opnctn on opnctn.ItemId=mi.ItemId and opnctn.SupplierBaleNo=tcid.SupplierBaleNo AND opnctn.MillsLotNo=tci.MillsLotNo
left join(
  select tmcd.MillLotNo, tmcd.SupplierBaleNo, tmcd.ItemId, sum(tmcd.IssueWt) as OpnMixIssWt from trn_mixingchartdetail as tmcd
  left join trn_mixingchart as tmc on tmc.MixingChartId=tmcd.MixingChartId
  where tmc.MixingChartDate < "2018-03-15"
  group by tmcd.MillLotNo, tmcd.SupplierBaleNo, tmcd.ItemId
) as opnmix on opnmix.ItemId=mi.ItemId and opnmix.SupplierBaleNo=tcid.SupplierBaleNo AND opnmix.MillLotNo=tci.MillsLotNo
left join (
  select sum(tcid.MillWt) as CtnInWt, tci.MillsLotNo, tcid.SupplierBaleNo, tcid.ItemId from trn_cottoninwarddetail as tcid
  left join trn_cottoninward as tci on tci.CiId=tcid.CiId
  where tci.CiDate between "2018-03-15" AND "2018-03-15"
  group by tci.MillsLotNo, tcid.SupplierBaleNo, tcid.ItemId
) as CtnIn on CtnIn.ItemId=mi.ItemId and CtnIn.SupplierBaleNo=tcid.SupplierBaleNo AND CtnIn.MillsLotNo=tci.MillsLotNo
left join (
  select tmcd.MillLotNo, tmcd.SupplierBaleNo, tmcd.ItemId, sum(tmcd.IssueWt) as MixIssWt from trn_mixingchartdetail as tmcd
  left join trn_mixingchart as tmc on tmc.MixingChartId=tmcd.MixingChartId
  where tmc.MixingChartDate between "2018-03-15" AND "2018-03-15"
  group by tmcd.MillLotNo, tmcd.SupplierBaleNo, tmcd.ItemId
) as MixOut on MixOut.ItemId=mi.ItemId and MixOut.SupplierBaleNo=tcid.SupplierBaleNo AND MixOut.MillLotNo=tci.MillsLotNo
where mit.CategoryId=1
group by tci.MillsLotNo, tcid.SupplierBaleNo, tcid.ItemId
order by mi.ItemName asc;
