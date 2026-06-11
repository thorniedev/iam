<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${msg("loginTitle",(realm.displayName!''))}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicaon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="${url.resourcesPath}/img/favicaon.ico" type="image/x-icon">
    <link rel="stylesheet" href="${url.resourcesPath}/css/login.css">
    <style>
        @media (min-width: 901px) {
            .hero-logo-wrap {
                margin-left: auto !important;
                margin-right: auto !important;
            }

            .login-card {
                max-width: 536px !important;
                min-height: 576px !important;
                padding: 46px 52px 56px !important;
                border: 2px solid #111111 !important;
                border-radius: 12px !important;
            }

            .login-card::before {
                content: none !important;
                display: none !important;
            }
        }

        @media (max-width: 900px) {
            .right {
                min-height: 100vh !important;
                display: flex !important;
                align-items: center !important;
                justify-content: center !important;
            }

            .login-card {
                border: 0 !important;
                padding: 0 !important;
            }
        }
    </style>
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
