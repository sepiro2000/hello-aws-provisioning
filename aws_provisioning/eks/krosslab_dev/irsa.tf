module "aws_lb_controller_irsa" {
  source = "../modules/irsa"


  eks_oidc_arn    = "arn:aws:iam::169021816258:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/0804523E2AD6B911BFB0B2E1182E9C8E"
  eks_oidc_url    = "https://oidc.eks.ap-northeast-2.amazonaws.com/id/0804523E2AD6B911BFB0B2E1182E9C8E"
  name            = "aws-load-balancer-controller-irsa"
  policy          = file("${path.module}/aws-lb-controller-iam-policy.json")
  service_account = "kube-system:aws-load-balancer-controller"
}

module "upload_service_irsa" {
  source = "../modules/irsa"

  eks_oidc_arn    = "arn:aws:iam::169021816258:oidc-provider/oidc.eks.ap-northeast-2.amazonaws.com/id/0804523E2AD6B911BFB0B2E1182E9C8E"
  eks_oidc_url    = "https://oidc.eks.ap-northeast-2.amazonaws.com/id/0804523E2AD6B911BFB0B2E1182E9C8E"
  name            = "upload-service-irsa"
  policy          = file("${path.module}/upload-service-iam-policy.json")
  service_account = "kross-service:upload-service"
}