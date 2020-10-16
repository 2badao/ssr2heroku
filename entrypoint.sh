cd /v2raybin

cat > config.json <<EOF
{
    "log": {
        "access": "",
        "error": "",
        "loglevel": "warning"
    },
    "inbound": {
        "protocol": "vmess",
        "port": "${PORT}",
        "settings": {
            "clients":[
                {
                    "id": "${UUID}",
                    "alterId": 64
                }
            ]
        },
        "streamSettings": {
            "network": "ws"
        }
    },
    "inboundDetour":[],
    "outbound": {
        "protocol": "freedom",
        "settings":{}
    }
}
EOF

./v2ray
