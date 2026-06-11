<!DOCTYPE html>
<html<#if locale??> lang="${locale.currentLanguageTag}" dir="${(locale.rtl)?then('rtl','ltr')}"</#if>>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex, nofollow">
    <title>${msg("logoutPageTitle")}</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicaon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="${url.resourcesPath}/img/favicaon.ico" type="image/x-icon">
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
                    <h3>QR &amp; GPS Validation</h3>
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
        <div class="login-card logout-card">
            <h2>${msg("logoutHeading")}</h2>
            <p class="desc">${msg("logoutSubtitle")}</p>

            <form id="kc-logout-confirm" action="${url.logoutConfirmAction}" method="post">
                <input type="hidden" name="session_code" value="${logoutConfirm.code}">
                <button id="kc-logout" name="confirmLogout" type="submit">
                    ${msg("doLogout")}
                </button>
            </form>
        </div>
    </section>
</div>
</body>
</html>
