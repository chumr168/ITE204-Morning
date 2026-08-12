<nav class="navbar">
    <div class="logo">MyApp</div>
    <ul class="nav-links">
        <%-- Home Link --%>
        <li class="${currentURI.endsWith('index.jsp') ? 'active' : ''}">
            <a href="<c:url value='/index.jsp' />">Home</a>
        </li>
        
        <%-- Dashboard Link --%>
        <li class="${currentURI.endsWith('dashboard.jsp') ? 'active' : ''}">
            <a href="<c:url value='/dashboard.jsp' />">Dashboard</a>
        </li>
        
        <%-- Settings Link --%>
        <li class="${currentURI.endsWith('settings.jsp') ? 'active' : ''}">
            <a href="<c:url value='/settings.jsp' />">Settings</a>
        </li>
    </ul>
</nav>