cp nginx/KeepAliveProbe_template.aspx nginx/KeepAliveProbe.aspx
echo $HOSTNAME >> nginx/KeepAliveProbe.aspx
sudo docker-compose up --build
