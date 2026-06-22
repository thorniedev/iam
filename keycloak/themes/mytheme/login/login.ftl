<!DOCTYPE html>
<html<#if locale??> lang="${locale.currentLanguageTag}" dir="${(locale.rtl)?then('rtl','ltr')}"</#if>>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="robots" content="noindex, nofollow">
    <title>${msg("loginTitle",(realm.displayName!''))}</title>
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

    <#-- RIGHT: form panel -->
    <section class="auth-panel">
        <div class="auth-panel-inner">

            <div class="auth-top">
                <img class="auth-logo" src="${url.resourcesPath}/logo/logo.png" alt="iCheck">

                <#if realm.internationalizationEnabled && locale?? && locale.supported?size gt 1>
                    <details class="lang">
                        <summary>
                            <svg class="lang-globe" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><path d="M2 12h20"/><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/></svg>
                            <span>${locale.current}</span>
                            <svg class="lang-caret" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m6 9 6 6 6-6"/></svg>
                        </summary>
                        <ul>
                            <#list locale.supported as l>
                                <li><a href="${l.url}">${l.label}</a></li>
                            </#list>
                        </ul>
                    </details>
                </#if>
            </div>

            <h2 class="form-title">Login</h2>
            <p class="form-sub">Enter your credentials to continue</p>

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
                    autocomplete="username"
                    autofocus
                >

                <label for="password">Password</label>
                <div class="pwd-wrap">
                    <input
                        id="password"
                        name="password"
                        type="password"
                        placeholder="Password"
                        autocomplete="current-password"
                    >
                    <button type="button" class="pwd-eye" data-target="password" aria-label="Show password">
                        <svg class="eye-open" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M2 12s3.5-7 10-7 10 7 10 7-3.5 7-10 7-10-7-10-7Z"/><circle cx="12" cy="12" r="3"/></svg>
                        <svg class="eye-off" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9.88 9.88a3 3 0 0 0 4.24 4.24"/><path d="M10.73 5.08A10.43 10.43 0 0 1 12 5c6.5 0 10 7 10 7a13.16 13.16 0 0 1-1.67 2.68"/><path d="M6.61 6.61A13.526 13.526 0 0 0 2 12s3.5 7 10 7a9.74 9.74 0 0 0 5.39-1.61"/><line x1="2" x2="22" y1="2" y2="22"/></svg>
                    </button>
                </div>

                <#if url.loginResetCredentialsUrl??>
                    <a class="forgot" href="${url.loginResetCredentialsUrl}">Forgot password?</a>
                </#if>

                <input type="hidden" name="credentialId" value="${credentialId!}">

                <button type="submit" class="btn">Sign in</button>
            </form>

            <#if social?? && social.providers?? && social.providers?has_content>
                <div class="social-divider">
                    <span>or continue with</span>
                </div>

                <div class="social-providers">
                    <#list social.providers as p>
                        <a id="social-${p.alias}" class="social-provider social-provider-${p.alias}" href="${p.loginUrl}">
                            <#if p.alias == "google">
                                <svg viewBox="0 0 24 24" aria-hidden="true"><path fill="#EA4335" d="M12 10.2v3.9h5.5c-.2 1.3-1.7 3.8-5.5 3.8-3.3 0-6-2.7-6-6s2.7-6 6-6c1.9 0 3.1.8 3.8 1.5l2.6-2.5C16.8 3.4 14.6 2.4 12 2.4 6.7 2.4 2.4 6.7 2.4 12S6.7 21.6 12 21.6c6.9 0 9.2-4.9 9.2-7.4 0-.5 0-.8-.1-1.2H12z"/></svg>
                            <#elseif p.alias == "facebook">
                                <svg viewBox="0 0 24 24" aria-hidden="true"><path fill="#1877F2" d="M22 12.1C22 6.5 17.5 2 12 2S2 6.5 2 12.1C2 17.1 5.7 21.3 10.4 22v-7H7.9v-2.9h2.5V9.9c0-2.5 1.5-3.9 3.8-3.9 1.1 0 2.2.2 2.2.2v2.5h-1.3c-1.2 0-1.6.8-1.6 1.6v1.9h2.8l-.4 2.9h-2.4v7C18.3 21.3 22 17.1 22 12.1z"/></svg>
                            </#if>
                            <span>${p.displayName!p.alias}</span>
                        </a>
                    </#list>
                </div>
            </#if>

            <#if realm.registrationAllowed && url.registrationUrl??>
                <p class="register-link">
                    Don't have an account?
                    <a href="${url.registrationUrl}">Register</a>
                </p>
            </#if>

        </div>
    </section>

</div>

<script>
    document.querySelectorAll('.pwd-eye').forEach(function (btn) {
        btn.addEventListener('click', function () {
            var input = document.getElementById(btn.getAttribute('data-target'));
            if (!input) return;
            var show = input.type === 'password';
            input.type = show ? 'text' : 'password';
            btn.classList.toggle('is-on', show);
        });
    });
</script>
</body>
</html>
