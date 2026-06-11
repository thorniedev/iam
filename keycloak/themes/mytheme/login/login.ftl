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
            <div class="hero-logo-wrap">
                <img src="${url.resourcesPath}/logo/logo.png" class="hero-logo" alt="iCheck" width="260" height="92">
            </div>

            <h1>Smart Attendance for Modern Classrooms</h1>

            <p class="subtitle">
                A seamless, real-time tracking platform built to eliminate administrative
                overhead and keep academic progress on track.
            </p>

            <div class="feature">
               
                <div>
                    <h3>QR & GPS Validation</h3>
                    <p>Instant, secure, and location-verified student check-ins.</p>
                </div>
            </div>

            <div class="feature">
               
                <div>
                    <h3>Real-Time Monitoring</h3>
                    <p>Live dashboard visibility for instructors to track attendance as it happens.</p>
                </div>
            </div>

            <div class="feature">
                
                <div>
                    <h3>Effortless Reporting</h3>
                    <p>One-click exports to PDF and Excel for quick academic record-keeping.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="right">
        <div class="login-card">
            <div class="mobile-logo-wrap">
                <img src="${url.resourcesPath}/logo/logo.png" class="mobile-logo" alt="iCheck" width="220" height="78">
            </div>

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
