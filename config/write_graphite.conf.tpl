LoadPlugin write_graphite

<Plugin "write_graphite">
        <Carbon>
                Host "{{ GRAPHITE_PORT_2003_TCP_ADDR }}"
                Port "{{ GRAPHITE_PORT_2003_TCP_PORT }}"
                EscapeCharacter "_"
                SeparateInstances true
                StoreRates true
                AlwaysAppendDS false
                Prefix ""
        </Carbon>
</Plugin>
