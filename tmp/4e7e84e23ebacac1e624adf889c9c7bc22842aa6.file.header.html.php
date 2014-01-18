<?php /* Smarty version Smarty-3.0.6, created on 2014-01-18 09:43:38
         compiled from "G:\WWW\li/tpl\theme/default/header.html" */ ?>
<?php /*%%SmartyHeaderCode:1840152d9dc4acf2743-07191180%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4e7e84e23ebacac1e624adf889c9c7bc22842aa6' => 
    array (
      0 => 'G:\\WWW\\li/tpl\\theme/default/header.html',
      1 => 1387469442,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1840152d9dc4acf2743-07191180',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!doctype html>
<html lang="zh-cn">
<head>
<title> <?php if ($_smarty_tpl->getVariable('titles')->value!=''){?> <?php echo $_smarty_tpl->getVariable('titles')->value;?>
 - <?php }?> <?php echo $_smarty_tpl->getVariable('username')->value;?>
 - <?php echo $_smarty_tpl->getVariable('yb')->value['site_title'];?>
 - <?php echo $_smarty_tpl->getVariable('yb')->value['site_titlepre'];?>
 - Rovun Light Blog</title>
<meta charset="utf-8" />
<base href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/" />
<meta name="author" content="<?php echo $_smarty_tpl->getVariable('username')->value;?>
,<?php echo $_smarty_tpl->getVariable('domain')->value;?>
,yunbian.org" />
<meta name="description" content="<?php if ($_smarty_tpl->getVariable('usersign')->value==''){?><?php echo preg_replace('!<[^>]*?>!', ' ', $_smarty_tpl->getVariable('description')->value);?>
<?php }else{ ?><?php echo preg_replace('!<[^>]*?>!', ' ', $_smarty_tpl->getVariable('usersign')->value);?>
<?php }?>" />
<meta name="keywords" content="<?php if ($_smarty_tpl->getVariable('usertag')->value==''){?><?php echo $_smarty_tpl->getVariable('keywords')->value;?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('usertag')->value;?>
<?php }?><?php if ($_smarty_tpl->getVariable('title')->value!=''){?>,<?php echo $_smarty_tpl->getVariable('title')->value;?>
<?php }?> " />
<script type="text/javascript"> 
var tplpath = '<?php echo $_smarty_tpl->getVariable('global_path')->value;?>
';
var urlpath = '<?php echo $_smarty_tpl->getVariable('url')->value;?>
';
</script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('global_path')->value;?>
js/jquery.min.js"></script>
<link href="<?php echo $_smarty_tpl->getVariable('global_path')->value;?>
image/css/reset.css" rel="stylesheet" type="text/css">
<link href="<?php echo $_smarty_tpl->getVariable('global_path')->value;?>
image/css/frame.css" rel="stylesheet" type="text/css">
<link href="<?php echo $_smarty_tpl->getVariable('global_path')->value;?>
image/css/gallery.show.css" rel="stylesheet" type="text/css">

<link href="<?php echo $_smarty_tpl->getVariable('themes_path')->value;?>
css/style.css" rel="stylesheet" type="text/css">
<style><?php echo $_smarty_tpl->getVariable('custom_css')->value;?>
</style>

</head>


<body>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('global_path')->value;?>
js/dialog/dialog.js?skin=mac"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('global_path')->value;?>
js/dialog/dialogTools.js"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/swf/player.js"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('global_path')->value;?>
js/gallery.min.js"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('global_path')->value;?>
js/gallery.global.js"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('global_path')->value;?>
js/global.js"></script>
<div id="header_bg">
<div id="footer_bg">

<div id="header">
 
    <?php if (islogin()){?>
      <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index'),$_smarty_tpl);?>
" target="_top"><img src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/goback.png" width="107" height="36"></a>
     <?php if ($_smarty_tpl->getVariable('uid')->value==$_SESSION['uid']){?><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'userblog','a'=>'customize'),$_smarty_tpl);?>
" target="_top"><img src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/custom.png" width="107" height="36"></a> <?php }else{ ?>
      <a href="javascript:void(0)" onClick="tiper('后期')"><img src="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/tuijian.png" width="77" height="36"></a><?php }?>
    <?php }else{ ?>
    <a  href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index'),$_smarty_tpl);?>
">首页</a>
    <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'login'),$_smarty_tpl);?>
">登陆</a>
    <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'reg'),$_smarty_tpl);?>
">注册</a>
    <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'site','a'=>'about'),$_smarty_tpl);?>
">关于</a>
    <?php }?>


</div>