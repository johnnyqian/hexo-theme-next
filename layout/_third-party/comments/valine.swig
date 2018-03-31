{% if page.comments and theme.valine.enable and theme.valine.appid and theme.valine.appkey %}
  
  <script src="{{ url_for(theme.js) }}/src/leancloud.js"></script>
  <script src="{{ url_for(theme.js) }}/src/valine.js?v={{ theme.version }}"></script>

  <script type="text/javascript">
    new Valine({
        av: AV,
        el: '#comments' ,
        verify: {{ theme.valine.verify }},
        notify: {{ theme.valine.notify }},
        app_id: '{{ theme.valine.appid }}',
        app_key: '{{ theme.valine.appkey }}',
        placeholder: '{{ theme.valine.placeholder }}'
    });
  </script>
{% endif %}
