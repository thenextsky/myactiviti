<!-- Static navbar -->
<nav class="navbar navbar-default navbar-static-top">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="${base}/user/index">My Activiti</a>
    </div>
    <ul class="nav navbar-nav">
	    <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">新建工单<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li class="dropdown-header">简单</li>
            <li><a href="#">普通流程</a></li>
            <li><a href="#">请假单</a></li>
            <li><a href="#">报销单</a></li>
            <li><a href="#">报障单</a></li>
            <li role="separator" class="divider"></li>
            <li class="dropdown-header">复杂</li>
            <li><a href="#">发邮件</a></li>
            <li><a href="#">多人并发流程</a></li>
          </ul>
        </li>
	    <li><a href="#">待办工单</a></li>
	    <li><a href="#">我的工单</a></li>
	    <li><a href="#">历史工单</a></li>
	</ul>
    <div id="navbar" class="navbar-collapse collapse">
      <ul class="nav navbar-nav navbar-right">
      	<#if user??>
	      	<#if (user.role=="管理员")>
	       		<li><a href="${base}/user/userlist">用户列表</a></li>
	       	</#if>
	        <li class="active"><a href="${base}/user/logout">退出</a></li>
	        <li><a href="#">${user.name}(${user.role})</a></li>
	    	<#else>
	    	<li class="active"><a href="${base}/user/loginview">登录</a></li>
	    </#if>
      </ul>
    </div>
  </div>
</nav>