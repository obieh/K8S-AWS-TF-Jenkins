Authenticate AWS CLI 

terraform init # Initialise TF
terraform fmt
terraform validate
terraform plan
terraform apply --auto-approve

#Manual Installation of Jenkins on Amazon-linux
Step 1: Update System Packages

sudo dnf update
sudo dnf install java-17-amazon-corretto -y

java -version

Step 2: Install Java Development Kit (JDK)

sudo dnf install java-17-amazon-corretto -y

java -version

Step 3: Add Jenkins Repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

Step 4: Import Jenkins Repository Key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

Step 5: Install Jenkins
sudo dnf install jenkins
Step 6: Start and Enable Jenkins Service
sudo systemctl start jenkins
sudo systemctl enable jenkins
