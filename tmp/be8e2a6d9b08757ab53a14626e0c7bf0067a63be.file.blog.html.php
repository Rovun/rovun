<?php /* Smarty version Smarty-3.0.6, created on 2014-01-18 09:46:13
         compiled from "G:\WWW\li/tpl\admin/blog.html" */ ?>
<?php /*%%SmartyHeaderCode:1397752d9dce5113f07-77232130%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'be8e2a6d9b08757ab53a14626e0c7bf0067a63be' => 
    array (
      0 => 'G:\\WWW\\li/tpl\\admin/blog.html',
      1 => 1320807614,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1397752d9dce5113f07-77232130',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_template = new Smarty_Internal_Template('admin/header.html', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
  <div id="content">

    <div>    <a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'admin','a'=>'tag'),$_smarty_tpl);?>
">标签管理</a></div>
     <h2>搜索</h2>
    <form id="form1" name="form1" method="post" action="">
    <table width="100%" class="table">

      <tr>
        <td width="60">标题</td>
        <td valign="middle"><input type="text" name="title" value="<?php echo $_smarty_tpl->getVariable('get')->value['title'];?>
"  />
        或</td>
      </tr>
      <tr>
        <td>用户ID</td>
        <td valign="middle"><input name="niname" type="text" value="<?php echo $_smarty_tpl->getVariable('get')->value['niname'];?>
"/></td>
      </tr>
    </table>

   <input name="submit" type="submit" value="搜索" />
    </form>

 <h2>博客列表</h2>
	  <div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>
    <table width="100%" class="table2">
    <tr>
        <th width="30" align="center" valign="middle">ID</th>
        <th width="30" align="center" valign="middle">置顶</th>
        <th width="40" align="center" valign="middle">类型</th>
        <th width="120" align="center" valign="middle">标签</th>
        <th width="40" align="center" valign="middle">草稿</th>
        <th width="40" align="center" valign="middle">点击</th>
        <th width="40" align="center" valign="middle">动态</th>
        <th width="40" align="center"  valign="middle">评论</th>
        <th width="40" align="center" valign="middle">不评</th>
        <th align="center"  valign="middle">标题</th>
        <th width="80" align="center"  valign="middle">作者</th>
        <th width="60" align="center" valign="middle">time</th>
      </tr>
  <?php  $_smarty_tpl->tpl_vars['d'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('blog')->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['d']->key => $_smarty_tpl->tpl_vars['d']->value){
?>
    <tr>
        <td><?php echo $_smarty_tpl->tpl_vars['d']->value['bid'];?>
</td>
        <td valign="middle"><?php if ($_smarty_tpl->tpl_vars['d']->value['top']==1){?>顶<?php }else{ ?>非<?php }?></td>
        <td valign="middle"><?php if ($_smarty_tpl->tpl_vars['d']->value['type']==1){?>文字<?php }elseif($_smarty_tpl->tpl_vars['d']->value['type']==2){?>音乐<?php }elseif($_smarty_tpl->tpl_vars['d']->value['type']==3){?>照片<?php }elseif($_smarty_tpl->tpl_vars['d']->value['type']==4){?>视频<?php }?></td>
        <td valign="middle"><?php echo tag(array('tag'=>$_smarty_tpl->tpl_vars['d']->value['tag'],'c'=>'tag'),$_smarty_tpl);?>
</td>
        <td valign="middle"><?php if ($_smarty_tpl->tpl_vars['d']->value['open']==1){?>否<?php }else{ ?>是<?php }?></td>
        <td valign="middle"><?php echo $_smarty_tpl->tpl_vars['d']->value['hitcount'];?>
</td>
        <td valign="middle"><?php echo $_smarty_tpl->tpl_vars['d']->value['feedcount'];?>
</td>
        <td valign="middle"><?php echo $_smarty_tpl->tpl_vars['d']->value['replaycount'];?>
</td>
        <td valign="middle"><?php if ($_smarty_tpl->tpl_vars['d']->value['noreply']==1){?>是<?php }else{ ?>否<?php }?></td>
        <td valign="middle"><a href="<?php echo goUserBlog(array('bid'=>$_smarty_tpl->tpl_vars['d']->value['bid']),$_smarty_tpl);?>
" target="_blank"><?php if ($_smarty_tpl->tpl_vars['d']->value['title']==''){?>没有标题<?php }else{ ?><?php echo $_smarty_tpl->tpl_vars['d']->value['title'];?>
<?php }?></a></td>
        <td valign="middle"><a href="<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['spUrl'][0][0]->__template_spUrl(array('c'=>'blog','a'=>'gouser','uid'=>$_smarty_tpl->tpl_vars['d']->value['user']['uid']),$_smarty_tpl);?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['d']->value['user']['username'];?>
</a></td>
        <td valign="middle"><?php echo ybtime(array('time'=>$_smarty_tpl->tpl_vars['d']->value['time']),$_smarty_tpl);?>
</td>
      </tr>
   <?php }} ?>
    </table>
    <div class="nav"><?php echo $_smarty_tpl->getVariable('pager')->value;?>
</div>




  </div>
<?php $_template = new Smarty_Internal_Template('admin/footer.html', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate();?><?php $_template->updateParentVariables(0);?><?php unset($_template);?>
