sh-keygen
cat .ssh/id_rsa.pub
ssh vagrant@192.168.56.9 #Probar conexion ctrl + d para salir

git clone https://github.com/upszot/UTN-FRA_SO_Ansible.git

cd UTN-FRA_SO_Ansible/ejemplo_02

vim inventory #Dejar solamente ip de host de desarrollo 192.168.56.9
vim playbook.yml #Dejar apt update y instalacion de apache

ansible-playbook -i inventory playbook.yml
sudo apt list --installed |grep apache
