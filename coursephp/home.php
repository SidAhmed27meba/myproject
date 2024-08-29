<?php
include "connect.php";
$alldata = array();
$alldata[`status`] = "success";
$data_categorie = getAllData(`categoriee`, null, null, false);
$data_itemss = getAllData(`items_cat_view`, 'Itemss_discount != 0' , null, false);
$alldata[`categoriee`] = $data_categorie;
$alldata[`itemss`] = $data_itemss;
echo json_encode($alldata);
?>