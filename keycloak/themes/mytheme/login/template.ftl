<#macro registrationLayout displayInfo=false displayMessage=true displayRequiredFields=false>
<!DOCTYPE html>
<html<#if locale??> lang="${locale.currentLanguageTag}" dir="${(locale.rtl)?then('rtl','ltr')}"</#if>>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex, nofollow">
    <title>Login | ICHECK</title>
    <link rel="icon" type="image/png" href="${url.resourcesPath}/img/favicon.png" />
    <#if propertifes.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
</head>
<body class="istad-body">
<div class="istad-page">

    <#-- LEFT: branding / marketing panel -->
    <aside class="istad-hero">
        <div class="istad-hero-inner">
            <h1 class="istad-hero-title">Shaping the future of<br/>Tech Education.</h1>
            <p class="istad-hero-text">A specialized portal designed to manage academic excellence, student success, and institutional growth.</p>

            <ul class="istad-features">
                <li class="istad-feature">
                    <span class="istad-feature-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 7v14"/><path d="M3 18a1 1 0 0 1-1-1V4a1 1 0 0 1 1-1h5a4 4 0 0 1 4 4 4 4 0 0 1 4-4h5a1 1 0 0 1 1 1v13a1 1 0 0 1-1 1h-6a3 3 0 0 0-3 3 3 3 0 0 0-3-3z"/></svg>
                    </span>
                    <span class="istad-feature-body">
                        <span class="istad-feature-title">Academic Excellence</span>
                        <span class="istad-feature-desc">Manage curriculum, grades, and educational standards.</span>
                    </span>
                </li>
                <li class="istad-feature">
                    <span class="istad-feature-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M22 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg>
                    </span>
                    <span class="istad-feature-body">
                        <span class="istad-feature-title">Student Success</span>
                        <span class="istad-feature-desc">Monitor progress and support every student's journey.</span>
                    </span>
                </li>
                <li class="istad-feature">
                    <span class="istad-feature-icon">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21.42 10.922a1 1 0 0 0-.019-1.838L12.83 5.18a2 2 0 0 0-1.66 0L2.6 9.08a1 1 0 0 0 0 1.832l8.57 3.908a2 2 0 0 0 1.66 0z"/><path d="M22 10v6"/><path d="M6 12.5V16a6 3 0 0 0 12 0v-3.5"/></svg>
                    </span>
                    <span class="istad-feature-body">
                        <span class="istad-feature-title">Institutional Growth</span>
                        <span class="istad-feature-desc">Scalable infrastructure for modern tech schools.</span>
                    </span>
                </li>
            </ul>
        </div>
    </aside>

    <#-- RIGHT: form panel -->
    <main class="istad-panel">
        <#if realm.internationalizationEnabled && locale?? && locale.supported?size gt 1>
            <details class="istad-locale">
                <summary>
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><path d="M2 12h20"/><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/></svg>
                    <span>${locale.current}</span>
                    <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m6 9 6 6 6-6"/></svg>
                </summary>
                <ul>
                    <#list locale.supported as l>
                        <li><a href="${l.url}">${l.label}</a></li>
                    </#list>
                </ul>
            </details>
        </#if>

        <div class="istad-panel-inner">

            <div class="istad-topbar">
                <img class="istad-logo" src="${url.resourcesPath}/img/logo.png" alt="${(realm.displayName!'ISTAD')}"/>
            </div>

            <#nested "header">

            <#if displayMessage && message?has_content && (message.type != 'warning' || !isAppInitiatedAction??)>
                <div class="istad-alert istad-alert-${message.type}">
                    ${kcSanitize(message.summary)?no_esc}
                </div>
            </#if>

            <#nested "form">

            <#nested "socialProviders">

            <#if displayInfo>
                <div class="istad-info">
                    <#nested "info">
                </div>
            </#if>
        </div>
    </main>
</div>

<script>
    document.querySelectorAll('.istad-eye').forEach(function (btn) {
        btn.addEventListener('click', function () {
            var input = document.getElementById(btn.getAttribute('data-target'));
            if (!input) return;
            input.type = input.type === 'password' ? 'text' : 'password';
            btn.classList.toggle('is-on');
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
