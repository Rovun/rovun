<?php /* Smarty version Smarty-3.0.6, created on 2014-01-18 09:42:45
         compiled from "G:\WWW\li/tpl\require_header.html" */ ?>
<?php /*%%SmartyHeaderCode:356352d9dc159a3c33-05200469%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '701b98ac96dcbfd6df9e255a2eeaed3bbd69add8' => 
    array (
      0 => 'G:\\WWW\\li/tpl\\require_header.html',
      1 => 1387469878,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '356352d9dc159a3c33-05200469',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!doctype html>
<html lang="zh-cn">
<head>
    <title><?php if ($_smarty_tpl->getVariable('titlepre')->value){?><?php echo $_smarty_tpl->getVariable('titlepre')->value;?>
 -<?php }?> <?php echo $_smarty_tpl->getVariable('title')->value;?>
 <?php echo $_smarty_tpl->getVariable('yb')->value['site_title'];?>
 - <?php echo $_smarty_tpl->getVariable('yb')->value['site_titlepre'];?>
 - Rovun Light Blog</title>
    <meta charset="utf-8" />
    <meta name="author" content="<?php echo $_smarty_tpl->getVariable('yb')->value['author'];?>
" />
    <meta name="description" content="<?php echo $_smarty_tpl->getVariable('yb')->value['site_desc'];?>
" />
    <meta name="keywords" content="<?php if ($_smarty_tpl->getVariable('titlepre')->value){?><?php echo $_smarty_tpl->getVariable('titlepre')->value;?>
,<?php }?><?php echo $_smarty_tpl->getVariable('yb')->value['site_keyword'];?>
" />
    <link rel="shortcut icon" href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/tpl/image/css/html5.css" class="cssfx"/>
	<?php $_template = new Smarty_Internal_Template("require_js.html", $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
</head>

<body>

<div id="header_bg">
<div id="footer_bg">
<div id="wrap">


<div id="header">
	<div id="logo"><a title="<?php echo $_smarty_tpl->getVariable('title')->value;?>
" href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index'),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->getVariable('title')->value;?>
</a></div>

    <div id="nav">
        <li <?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='index'){?>class="current"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'index'),$_smarty_tpl);?>
">首页</a><?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='index'){?><div class="nav_arrow"></div><?php }?></li>
        <li <?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='recommend'){?>class="current"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'recommend'),$_smarty_tpl);?>
">推荐</a><?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='recommend'){?><div class="nav_arrow"></div><?php }?></li>
        <li <?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='discover'){?>class="current"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'discovery'),$_smarty_tpl);?>
">发现</a><?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='discover'){?><div class="nav_arrow"></div><?php }?></li>
        <li <?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='now'){?>class="current"<?php }?>><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'now'),$_smarty_tpl);?>
">此刻</a><?php if ($_smarty_tpl->getVariable('CurrentModule')->value=='now'){?><div class="nav_arrow"></div><?php }?></li>
        <!--<li><a href="<?php echo $_smarty_tpl->getVariable('url')->value;?>
/group.php"  target="_blank">论坛</a></li>-->

	</div>

    <div id="tool">
    <?php if (islogin()){?>
        <ul id="notice">
            <li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'mynotice'),$_smarty_tpl);?>
">通知</a><?php if ($_smarty_tpl->getVariable('noticeCount')->value){?><div class="pop"><?php echo $_smarty_tpl->getVariable('noticeCount')->value;?>
</div><?php }?></li>
            <li><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'pm'),$_smarty_tpl);?>
">私信</a><?php if ($_smarty_tpl->getVariable('pmCount')->value){?><div class="pop"><?php echo $_smarty_tpl->getVariable('pmCount')->value;?>
</div><?php }?></li>
        </ul>


         <ul id="side">
            <div id="img"><img src="<?php echo avatar(array('uid'=>$_SESSION['uid'],'size'=>'middle'),$_smarty_tpl);?>
" alt="<?php echo $_SESSION['username'];?>
" width="30" height="30"/></div>
            <div id="name"><a href="<?php echo goUserHome(array('domain'=>$_SESSION['domain'],'uid'=>$_SESSION['uid']),$_smarty_tpl);?>
" target="_blank" title="我的主页"><?php echo $_SESSION['username'];?>
</a></div>

            <a href="javascript:void(0)" id="menuSideBtn"></a>
            <ul id="menuSide" style="display:none">
            	<a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'setting'),$_smarty_tpl);?>
">设置</a>
                <?php if ($_SESSION['admin']==1){?><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin'),$_smarty_tpl);?>
">后台</a><?php }?>
                <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'logout'),$_smarty_tpl);?>
">退出</a>
         	 </ul>
        </ul>
        <?php }?>

    </div>

    <!--<div  class="tool">
        <?php if ($_SESSION['uid']==''){?>
            <a href="javascript:void(0)" onClick="loginBox('<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'login'),$_smarty_tpl);?>
')">登陆</a>
            <a href="javascript:void(0)" onClick="regBox('<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'reg'),$_smarty_tpl);?>
')">注册</a>
        <?php }else{ ?>
      	  <a href="<?php echo goUserHome(array('domain'=>$_SESSION['domain'],'uid'=>$_SESSION['uid']),$_smarty_tpl);?>
" target="_blank" title="我的主页"><?php echo $_SESSION['username'];?>
</a>
           <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'pm'),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->getVariable('pmCount')->value;?>
私信</a>
           <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'user','a'=>'setting'),$_smarty_tpl);?>
">设置</a>
          <?php if ($_SESSION['admin']==1){?><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin'),$_smarty_tpl);?>
">后台</a><?php }?>
          <a href="javascript:void(0)" onClick="logout('<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'logout'),$_smarty_tpl);?>
')">退出</a>

        <?php }?>
       	  <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'site','a'=>'about'),$_smarty_tpl);?>
">关于</a>
    </div>-->
</div>
<input type="hidden"  name="login_url" id="login_url" value="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'login'),$_smarty_tpl);?>
" />
<input type="hidden"  name="reg_url" id="reg_url" value="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'main','a'=>'reg'),$_smarty_tpl);?>
" />


