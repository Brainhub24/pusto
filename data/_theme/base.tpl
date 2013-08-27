<!DOCTYPE HTML>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="/_theme/reset.css" type="text/css" />
    <link rel="stylesheet" href="/_theme/styles.css" type="text/css" />
    <title>pusto.org: {% block title %}{{ title or url }}{% endblock %}</title>
</head>
<body>
{% set github="https://github.com/naspeh/pusto/tree/master/data" %}
{% block body %}
    {% if html_title %}
    <h1 class="title">
        {{ html_title }}
        <ul class="meta">
            {% if published %}
            <li>Опубликовано: {{ published.strftime('%d.%m.%Y') }}</li>
            {% endif %}
            <li><a href="{{ github }}{{ index_file or url }}">смотреть на github</a></li>
        </li>
    </h1>
    {% endif %}
    <div class="document">
        {{ html_body }}
    </div>
{% endblock %}
</body>
