<#import "/common/common.macro.ftl" as common>
<!DOCTYPE html>
<html>
<head>
    <@common.commonHead/>
    <title>用户管理</title>
    <@common.commonStyle/>
</head>
<body>
    <div class="container-fluid">
        <h2>用户列表</h2>
        <button class="btn btn-outline-primary btn-sm" id="btn-add"><a class="fa fa-plus"></a> 添加</button>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>编号</th>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>真实姓名</th>
                    <th>创建人</th>
                    <th>创建时间</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody>
            <#list users as user>
                <tr>
                    <td>${user.id}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>${user.realname}</td>
                    <td>${user.createby}</td>
                    <td>${user.createtime}</td>
                    <td>
                        <button class="btn btn-outline-primary btn-sm btn-edit" data-id="${user.id}"><a class="fa fa-edit"></a> 修改</button>
                        <button class="btn btn-outline-primary btn-sm btn-del" data-id="${user.id}"><a class="fa fa-remove"></a> 删除</button>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
    </div>
    <@common.commonScript/>
    <script type="text/javascript">
        $(function () {
            $('#btn-add').click(function () {
                window.location.href='/user/form?id=0';
            });
            $('.btn-edit').click(function () {
                var target = $(this);
                window.location.href='/user/form?id='+target.data('id');
            });
            $('.btn-del').click(function () {
                var target = $(this);
                if(confirm('确定要删除？')) {
                    $.ajax({
                        type: 'post',
                        url: '/user/delete',
                        data: {id: target.data('id')},
                        success: function (response) {
                            if(response.code==0){
                                window.location.reload();
                            }else{
                                alert('删除失败！');
                            }
                        }
                    })
                }
            });
        })
    </script>
</body>
</html>