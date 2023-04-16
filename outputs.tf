output "jenkins_ip" {
  value = aws_instance.this.public_ip
}

output "endpoint" {
  value = aws_eks_cluster.demo.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.demo.certificate_authority[0].data
}
resource "local_file" "kubeconfig" {
  content  = aws_eks_cluster.demo.certificate_authority[0].data
  filename = "kube_config.yaml"
}