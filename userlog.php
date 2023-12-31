<?php
  session_start();
  $email = $_SESSION['email'];
  if($email==null){
    header('Location:login_before_injection_prevention.php'); 
  }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Log</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.23/css/dataTables.bootstrap4.min.css">
</head>

<body>
    <div class="p-3 mb-5 bg-white rounded">
        <h2 style="color: #30C77A;"><strong>User log</strong></h2>
        <table id="example" class="table table-dark" style="width:100%">
            <thead>
                <tr>
                    <th>User Email</th>
                    <th>Activities</th>
                    <th>Time</th>
                    <th>Block</th>


                </tr>

            </thead>
            <tbody>
                <?php
                include '_dbconnect.php';
                $sql = "SELECT *  FROM log";

                $result = mysqli_query($con, $sql);
                $num1 = mysqli_num_rows($result);
                $html = "";
                if ($num1 > 0) {
                    while ($row = $result->fetch_assoc()) {
                        $u_email=$row["email"];
                ?>
                        <tr>
                            <td> <?php echo $row["email"] ?></td>
                            <td> <?php echo $row["activity"] ?></td>
                            <td> <?php echo $row["time"] ?></td>
                            <?php
                            $sql2 = "SELECT * FROM user where email='$u_email';";
                            $result2 = mysqli_query($con, $sql2);
                            while ($row2 = $result2->fetch_assoc()) {
                                $block= $row2["block"];
                            }
                            
                            ?>
                            <?php if($block=="no"){ ?>
                            <td> <a class="btn btn-outline-danger" href="block.php?id=<?php echo urlencode($row['email'])?>">Block</a> </td>
                            <?php }?>
                            <?php if($block=="yes"){ ?>
                            <td> <a class="btn btn-warning" href="block3.php?id=<?php echo urlencode($row['email'])?>">Unblock</a> </td>
                            <?php } ?>

                        </tr>
                <?php
                    }
                }

                ?>
            </tbody>

        </table>
    </div>

</body>

</html>