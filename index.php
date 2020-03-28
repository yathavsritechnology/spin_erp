<?php define("_VALID_PHP", true);
define('ENVIRONMENT', 'production');
ini_set("allow_url_include", "1");
//39 - Lambothara
//41 - Pachai amman
$ClientId = 39;
if (defined('ENVIRONMENT'))
{
    switch (ENVIRONMENT)
    {
        case 'development':
            error_reporting(E_ALL | E_STRICT);
            ini_set("display_errors", "1");
            define('BUGTRACKER_REST_URL', 'http://192.168.1.11/bugtracker/');
            define('project', '12');
            define('username', 'nagaraj');
            define('password', '');
            $localhost = 1;
		break;
        
        case 'testing':
            error_reporting(E_ALL | E_STRICT);
            ini_set("display_errors", "1");
            $localhost = 1;
		break;
        
        case 'production':
            error_reporting(0);
            ini_set("display_errors", "0");
            $localhost = 0;
		break;
        
        default:
            exit('The application environment is not set correctly.');
		break;
    }
}
?>
<!DOCTYPE html>
<html lang="en">
    <?php
    include("init.php");
    global $usercls;
	require_once(SETPATH . "/menu/obj_menu.php");
    //echo $usercls->CompanyId;
    if (!$usercls->startSession())
    {
        redirect_to("login.php");
    }
	if(isset($_GET['do'])) {
		$core->do=$_GET['do'];
	}
	if(isset($_GET['mod'])) {
		$core->mod=$_GET['mod'];
	}
	if(isset($_GET['action'])) {
		$core->action=$_GET['action'];
	}
	if(isset($_GET['proj'])) {
		$core->proj=$_GET['proj'];
		$core->menuid = $Menu->GetMenuIdByTemplateName($core->do);
	}
	include('header.php');
	?>
    <body class="ptrn_e">
		<div id="loading_layer" style="display:none"><img src="img/ajax_loader.gif" alt="" /></div>
		<?php //include('style_switcher.php');
        ?>
		<div id="maincontainer" class="clearfix">
			<!-- header -->
            <?php include('header_top.php'); ?>
            <!-- main content -->
            <div id="contentwrapper">
                <div class="main_content" style="padding-top:50px !important;">
					<nav>
                        <div id="jCrumbs" class="breadCrumb module">
                            <ul>
								<?php
								echo '<li><a href="index.php"><i class="icon-home"></i></a></li>';
								if($core->mod != ""){
								echo '<li>'.strtoupper($core->mod).'</li>';
								}
								if($core->proj != ""){
								echo '<li>'.strtoupper($core->proj).'</li>';
								}
								if($core->do != ""){
								echo '<li>'.strtoupper($core->do).'</li>';
								}
								if($core->action != ""){
								echo '<li>'.strtoupper($core->action).'</li>';
								}
								?>
                            </ul>
                        </div>
                    </nav>
                    <div id="msgholder"></div>
                    <?php
                    //echo $core->proj;
                    //echo $core->do;
                    if($core->proj == "mis"){
						$rpath = $core->mod . "/" . $core->proj . "/" . $core->do;
						$apath = $core->action;
						$path = $core->mod . "/" . $core->proj . "/" . $core->do . "/" . $core->action;
						//echo $rpath."<br />";
						//($core->do && file_exists($rpath . ".php")) ? include($rpath . ".php&action=".$apath) : include("main.php");
                        if($core->do == "report"){
							($core->do && file_exists($path . ".php")) ? include($path . ".php") : include("main.php");
                        }
                        else{
							($core->do && file_exists($rpath . ".php")) ? include($rpath . ".php") : include("main.php");
                        }
                    }
                    else {
						$path = $core->mod . "/" . $core->proj . "/" . $core->do . "/" . $core->action;
						//echo $path. "<br />".$core->do;
						($core->do && file_exists($path . ".php")) ? include($path . ".php") : include("main.php");
					}
                    ?>
                </div>
            </div>
			<!-- sidebar -->
            <?php //include('sidebar.php'); ?>
            <?php include('footer.php'); ?>
		</div>
        <div class="modal hide fade" id="modal_screen" role="dialog" aria-hidden="true" style="height: 300px;">
            <div class="modal-header">
                <button class="close" data-dismiss="modal">×</button>
                <!--<h3>Modal header</h3>-->
                <h3 class="modal-title">TITLE</h3>
            </div>
            <div class="modal-body" style="height:100% !important;">
                <div class="row">
                    <div class="icons-display"></div>
                </div>
            </div>
        </div>
        <footer>
            <p class="pull-left" style="padding-top:10px;padding-left;10px;">
                &copy; <a href="#" target="_blank"><?= $PrinterSettings->GetCompanyName(); ?></a> <?php echo date('Y') ?><br />
                Database - <b><?php echo DB_DATABASE; ?></b><br />
            </p>
            <p class="pull-right" style="">
                Powered by: <a href="#"><?= $core->company; ?></a><br />
                Host Name : <a href="#"><?= DB_SERVER; ?></a>
            </p>
        </footer>
	</body>
</html>
