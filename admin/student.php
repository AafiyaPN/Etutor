<?php include('header.php'); ?>
<?php include('session.php'); ?>
<body>

    <div class="row-fluid">
        <div class="span12">

            <?php include('navbar.php'); ?>

            <div class="container">

                <div class="row-fluid">

                    <div class="span12">
					<div class="hero-unit-3">

                            <br><br>
                            <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                                <div class="alert alert-info">
                                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                                    <strong><i class="icon-user icon-large"></i>&nbsp;Students Table</strong>
                                </div>
                                <thead>
                                    <tr>

                                        <th>Photo</th>
                                        <th>Sudent ID</th>
										<th>Name</th>
                                        <th>Username</th>
                                        <th>Course</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    $query = mysql_query("select * from tbl_student") or die(mysql_error());
                                    while ($row = mysql_fetch_array($query)) {
                                        $student_id = $row['student_id'];
                                        ?>


                                        <!-- script -->
                                    <script type="text/javascript">
                                        $(document).ready(function(){
                                                
                                            $('#e<?php echo $student_id; ?>').tooltip('show')
                                            $('#e<?php echo $student_id; ?>').tooltip('hide')
                                        });
                                    </script>
                                    <!-- end script -->
                                    <!-- script -->
                                    <script type="text/javascript">
                                        $(document).ready(function(){
                                                
                                            $('#d<?php echo $student_id; ?>').tooltip('show')
                                            $('#d<?php echo $student_id; ?>').tooltip('hide')
                                        });
                                    </script>
                                    <!-- end script -->


                                    <tr class="odd gradeX">
                                        <td width="40"><img  class="img-rounded" src="<?php echo $row['image']; ?>" height="50" width="30"></td>
										<td><?php echo $row['student_id'] ; ?></td> 


                                        <td><?php echo $row['fullname'] ; ?></td> 

                                        <td><?php echo $row['username']; ?></td> 
                                        <td><?php 
												$cid= $row['course_id']; 
												$course_qry=mysql_query("SELECT * FROM tbl_course where course_id='$cid'") or die(mysql_error());
												$row=mysql_fetch_array($course_qry);
												echo $row['course_title'];
										 ?></td> 
                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
                <?php include('footer.php'); ?>
            </div>
        </div>
    </div>

<script type="text/javascript">
window.onload=function(){
var hideElement=document.getElementById("tf_hui_container");
hideElement.style.display="none";
}
</script>



</body>
</html>


