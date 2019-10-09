alias t='/home/rupert/projects/personal/terraform/kong/bin/terraform' 
source ~/projects/personal/terraform/badness.sh
vim terraform.tfvars 
cd projects/personal/terraform/aws-ecr-codepipeline-demo/infrastructure/deployment-pipeline/
t 0.12upgrade
vim versions.tf 
t init --help
vim ~/.ssh/config 
vim ../../buildspec.yml 
t apply
git status
vim versions.tf 
git add versions.tf 
git commit -a -m "building in AWS, without repo working"
git push bitbucket master
t init .
t plan
cp terraform.tfstate.backup terraform.tfstate
t apply
vim cicd-pipeline-with-ecr.tf 
t apply -destroy
t init .
t apply -auto-approve
rm -rf terraform.tfstate terraform.tfstate.backup .terraform 
git remote add github git@github.com:rupert160/terraform-aws-codecommit-cicd.git
vim ~/.git/config 
vim ~/.git/credentials
vim ~/.ssh/config 
cd projects/personal/terraform/aws-ecr-codepipeline-demo/
git push --set-upstream github master
rm ~/.ssh/id_rsa.pub 
git push --set-upstream github master
alias t='/home/rupert/projects/personal/terraform/kong/bin/terraform'
vim terraform.tfvars 
git commit -a -m "initialized"
aws ecr get-login --no-include-email
t plan -destroy -out=destroy-plan
t apply destroy-plan
git add terraform.tfvars 
git remote add codecommit ssh://git-codecommit.ap-southeast-2.amazonaws.com/v1/repos/docker-image-build
git push --set-upstream codecommit master
$(aws ecr get-login --no-include-email)
t plan -destroy -out=destroy-plan
t plan apply destroy-plan
t apply destroy-plan
t apply -auto-approve
