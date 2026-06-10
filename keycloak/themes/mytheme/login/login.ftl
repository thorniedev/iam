<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${msg("loginTitle",(realm.displayName!''))}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css">
</head>

<body>
<div class="page">

    <section class="left">
        <div class="content">
            <h1>Shaping the future of<br>Tech Education.</h1>

            <p class="subtitle">
                A specialized portal designed to manage academic excellence,
                student success, and institutional growth.
            </p>

            <div class="feature">
                <div class="icon">📘</div>
                <div>
                    <h3>Academic Excellence</h3>
                    <p>Manage curriculum, grades, and educational standards.</p>
                </div>
            </div>

            <div class="feature">
                <div class="icon">👥</div>
                <div>
                    <h3>Student Success</h3>
                    <p>Monitor progress and support every student's journey.</p>
                </div>
            </div>

            <div class="feature">
                <div class="icon">🎓</div>
                <div>
                    <h3>Institutional Growth</h3>
                    <p>Scalable infrastructure for modern tech schools.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="right">
        <div class="login-card">

            <img src="${url.resourcesPath}/img/logo.png" class="logo" alt="iSTAD">

            <h2>Login</h2>
            <p class="desc">Enter your credentials to continue</p>

            <#if message?has_content>
                <div class="alert ${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <form id="kc-form-login" action="${url.loginAction}" method="post">

                <label for="username">Username</label>
                <input
                    id="username"
                    name="username"
                    type="text"
                    value="${(login.username!'')}"
                    placeholder="Enter your username"
                    autofocus
                >

                <label for="password">Password</label>
                <input
                    id="password"
                    name="password"
                    type="password"
                    placeholder="Password"
                >

                <#if url.loginResetCredentialsUrl??>
                    <a class="forgot" href="${url.loginResetCredentialsUrl}">
                        Forgot password?
                    </a>
                </#if>

                <input type="hidden" name="credentialId" value="${credentialId!}">

                <button type="submit">Sign in</button>
            </form>

        </div>
    </section>

</div>
</body>
</html>