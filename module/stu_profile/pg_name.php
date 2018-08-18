<?php
    $phpfiles=glob("../../include/php/*.php");
    foreach ($phpfiles as  $phpfile) {
        include_once($phpfile);
    }
    extract($_POST);
    //boreder not comming properly
?>
<?php if($liveat=='provided'){ ?>
Select PG
<select class="form-control" width="300" onchange="search()" id="pg_name">
    <option value="">See All</option>
    <?php 
        $pg_dtl=fetchAll("select id,name from provided_pg order by name");
        foreach ($pg_dtl as  $pg_value) {
            ?>
            <option value="<?php echo $pg_value['id']; ?>"><?php echo $pg_value['name']; ?></option>
            <?php
        }
    ?>
</select>
<?php } elseif($liveat=='pg'){
?>
Enter other pg name
    <input type="text" class="form-control" id="pg_name" onkeyup="search()">
<?php
}?>