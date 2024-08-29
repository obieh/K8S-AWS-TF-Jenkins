TASK
1. CREATE AND INSTALL JENKINS WITH TF
2. CREATE K8S CLUSTER ON THE JENKINS SERVER
3. DEPLOY OUR K8S CLUSTER
Authenticate AWS CLI 
# Teraform Commands
terraform init # Initialise TF
terraform fmt
terraform validate
terraform plan
terraform apply --auto-approve

# Manual Installation of Jenkins on Amazon-linux
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

# Update eks kubeconfig once k8s cluster is installed successfully
aws eks update-kubeconfig --name eks-cluster-209

kubectl config current-context
kubectl config svc
kubectl get events
kubectl get pods
kubectl log <podName>
kubectl logs --since=6h <pod_name> #Print the logs for the last 6 hours for a pod 
kubectl logs --tail=50 <pod_name>
kubectl logs -f <pod_name>
kubectl logs -c <container_name> <pod_name>
kubectl logs --previous <pod_name> #View the logs for a previously failed pod
kubectl apply -f service.yaml
kubectl get svc ngnix

# Delete K8s Cluster 
kubectl delete svc <serviceName>
kubectl delete -f <FileName>
eksctl delete cluster --name <ClusterName> --<regionName>