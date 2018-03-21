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
        <h2>用户管理</h2>
        <form>
            <input type="hidden" value="${user.id}" />
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">username</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="username" value="${user.username}"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">password</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" name="password"/>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">realname</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="realname" value="${user.realname}"/>
                </div>
            </div>
        </form>
    </div>
    <@common.commonScript/>
    <script type="text/javascript">
        $(function () {

        })
    </script>
</body>
</html>