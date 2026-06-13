<#macro registrationLayout displayInfo=false displayMessage=true displayRequiredFields=false>
<!DOCTYPE html>
<html<#if locale??> lang="${locale.currentLanguageTag}" dir="${(locale.rtl)?then('rtl','ltr')}"</#if>>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex, nofollow">
    <title>Login | ICHECK</title>
    <link rel="icon" href="${url.resourcesPath}/img/favicaon.ico" type="image/x-icon" />
    <link rel="shortcut icon" href="${url.resourcesPath}/img/favicaon.ico" type="image/x-icon" />
    <#if properties.styles?? && properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
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
                <img class="auth-logo" src="${url.resourcesPath}/logo/logo.png" alt="${(realm.displayName!'iCheck')}"/>

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

            <h2 class="form-title"><#nested "header"></h2>

            <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                <div class="alert ${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <#nested "form">

            <#nested "socialProviders">

            <#if displayInfo>
                <div class="auth-info">
                    <#nested "info">
                </div>
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

<#if scripts??>
    <#list scripts as script>
        <script src="${script}" type="text/javascript"></script>
    </#list>
</#if>
</body>
</html>
</#macro>
