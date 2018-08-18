	<div class="col-lg-12 table-responsive">
    <form role="form" class="form-horizontal" enctype="multipart/form-data" method="post">
    			<table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td width="200">Purpose <input onkeyup="search()" id="purpose" type="text" class="form-control" /></td>
                    <td>Organisation Name 
                        <select class="form-control" onchange="search()" id="org_name" name="oorg_name">
                        <option value=""></option>
                        <?php 
                            $org_names = fetchAll("select id,name from organization group by name");
                            foreach ($org_names as $org_name) {
                                ?>
                                <option value="<?php echo $org_name['id'] ?>"><?php echo $org_name['name'] ?></option>
                                <?php 
                            }
                        ?>
                    </select>
                    </td>
                    <td>Search by Date<input onchange="search()" id="date_from" type="date" class="form-control" />
                    </td>
                    <td>
                        To<input type="date" onchange="search()" id="date_to" type="date_to" class="form-control" />
                    </td>
                </tr>
            </table>
            	<table class="table table-bordered table-hover">
            	<tr class="active1 table_style" style="font-weight:600; text-align:justify;">
                    <td>Total Expense in this Section : </td>
                    <td>See All Expenses</td>
                    <td>Select All <input type="checkbox" /></td>
                    <td>Delete All <img src="images/trash.png" /> </td>
                </tr>
            </table>
            <table class="table table-bordered table-hover" id="show">
            	<tr class="active1 table_style" style="font-weight:600;">
                    <td >Sr. No.</td>
                    <td >Purpose</td>
                    <td >Total Amount</td>
                    <td >Paid till now</td>
                    <td>Remaing</td>
                    <td >Organisation name</td>
                    <td >Date</td>
                    <td >Action</td>
                    <td>Payment</td>
                </tr>
                <?php 
                $url=ROOT."index/expenses/syn_s_expenses/";
                // $limit=1;
                $frmdataget=$_REQUEST;
                @PaginationWork(10); 
                $totRslt=mysqli_fetch_assoc(mysqli_query($con,"select count(*) as tot FROM expenses join organization on org_name=organization.id"));  
                $sno = 1;
                $exp_data = fetchAll("SELECT expenses.id,purpose,name,date,total_amount FROM expenses join organization on org_name=organization.id limit ".$frmdata['from'].", ".$frmdata['to']);
                foreach ($exp_data as  $exp_value) {
                ?>
                <tr>
                    <td><?php echo $sno++;  ?></td>
                    <td><?php echo $exp_value['purpose'];  ?></td>
                    <td><?php echo $exp_value['total_amount'];  ?></td>
                    <td>
                        <?php 
                        $total_pay = fetchOne("select sum(amount) as tot from payment where bill_no = $exp_value[id]");
                        echo $total_pay['tot'];
                        ?>
                    </td>
                    <td>
                        <?php 
                        echo $exp_value['total_amount']-$total_pay['tot'];
                        ?>
                    </td>
                    <td><?php echo $exp_value['name'];  ?></td>
                    <td><?php echo $exp_value['date'];  ?></td>
                    <td><a href="<?php echo ROOT; ?>index/expenses/edit_exp/<?php echo $exp_value['id']; ?>">Edit</a></td>
                    <td><a href="<?php echo ROOT; ?>index/expenses/see_pay/<?php echo $exp_value['id']; ?>">Payment Detail</a></td>
                </tr>
                <?php } ?>
                <tr>
                    <td colspan="20">
                        <?php PaginationDisplay($totRslt['tot'],$url.'page=','',10,'View More Photos');?>
                    </td>
                </tr>
            </table>
                            
    </form>
      </div>
      <script type="text/javascript">
          function search(){
            var purpose = $('#purpose').val();
            var org_name = $('#org_name').val();
            var date_from = $('#date_from').val();
            var date_to = $('#date_to').val();
            $.ajax({
                url:root_path+"module/expenses/search.php",
                data:"purpose="+purpose+"&org_name="+org_name+"&date_from="+date_from+"&date_to="+date_to,
                type:"post",
                success:function(e){
                    $('#show').html(e);
                },
                error:function(e){
                    alert(e);
                }
            });
          }
      </script>
      <script type="text/javascript">
        function showpage(where,page){
            // alert(where+page);
            $.ajax({
                url:root_path+'module/expenses/search.php',
                data:"where="+where+"&pageNumber="+page,
                type:'post',
                success:function(e){
                    $('#show').html(e);

                },error:function(e){
                    alert(e);
                }
            });
        }
    </script>