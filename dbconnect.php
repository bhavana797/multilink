<?php
$db=parse_ini_file("properties.ini",true);
	 $DBhost = $db['host'];
	 $DBuser = $db['user'];
	 $DBpass = $db['password'];
	 $DBname = $db['dbname'];;
	 
	// $con =mysqli_connect($DBhost,$DBuser,$DBpass,$DBname);
	mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
try 
{
 $con = new MySQLi($DBhost,$DBuser,$DBpass,$DBname);
	
}
catch(mysqli_sql_exception $ex)
{
	
	
	echo  "<script type=\"text/javascript\">
					
				 swal({
					title: '',
					text: 'Your Corpcode is Wrong!',
					
					type: 'warning'
				},function() {
											
				}
				);
			

			</script>";

	
	die("");
	
}
    
 
?>
