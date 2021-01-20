cp nginx/KeepAliveProbe_template.aspx nginx/KeepAliveProbe.aspx
echo $HOSTNAME >> nginx/KeepAliveProbe.aspx


{
  sudo docker-compose up --build
} || {
  sudo rm /usr/local/bin/docker-compose
  sudo apt remove docker-compose
  sudo apt autoremove
  sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
  sudo chmod +x /usr/local/bin/docker-compose
  sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
}
