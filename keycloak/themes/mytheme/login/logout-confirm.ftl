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

<body class="auth-body">
<div class="auth-page">

    <#-- LEFT: marketing / branding -->
    <section class="auth-hero">
        <div class="auth-hero-inner">
            <h1 class="hero-title">Smart Attendance for Modern Classrooms</h1>
            <p class="hero-sub">
                A seamless, real-time tracking platform built to eliminate administrative
                overhead and keep academic progress on track.
            </p>

            <ul class="hero-features">
                <li class="hero-feature">
                    <span class="hero-feature-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 10c0 6-8 12-8 12s-8-6-8-12a8 8 0 0 1 16 0Z"/><circle cx="12" cy="10" r="3"/></svg>
                    </span>
                    <span class="hero-feature-text">
                        <span class="hero-feature-title">QR &amp; GPS Validation</span>
                        <span class="hero-feature-desc">Instant, secure, and location-verified student check-ins.</span>
                    </span>
                </li>

                <li class="hero-feature">
                    <span class="hero-feature-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 12h-4l-3 9L9 3l-3 9H2"/></svg>
                    </span>
                    <span class="hero-feature-text">
                        <span class="hero-feature-title">Real-Time Monitoring</span>
                        <span class="hero-feature-desc">Live dashboard visibility for instructors to track attendance as it happens.</span>
                    </span>
                </li>

                <li class="hero-feature">
                    <span class="hero-feature-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7Z"/><path d="M14 2v5h5"/><path d="M9 13h6"/><path d="M9 17h6"/></svg>
                    </span>
                    <span class="hero-feature-text">
                        <span class="hero-feature-title">Effortless Reporting</span>
                        <span class="hero-feature-desc">One-click exports to PDF and Excel for quick academic record-keeping.</span>
                    </span>
                </li>
            </ul>
        </div>
    </section>

    <#-- RIGHT: logout panel -->
    <section class="auth-panel">
        <div class="auth-panel-inner auth-panel-inner--logout">

            <div class="auth-top">
                <img class="auth-logo" src="${url.resourcesPath}/logo/logo.png" alt="iCheck">
            </div>

            <h2 class="form-title">${msg("logoutHeading")}</h2>
            <p class="form-sub">${msg("logoutSubtitle")}</p>

            <form id="kc-logout-confirm" action="${url.logoutConfirmAction}" method="post">
                <input type="hidden" name="session_code" value="${logoutConfirm.code}">
                <button id="kc-logout" name="confirmLogout" type="submit" class="btn">
                    ${msg("doLogout")}
                </button>
            </form>
        </div>
    </section>

</div>
</body>
</html>
