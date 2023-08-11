.class Lcom/hangame/hsp/sns/HSPFacebookService$13$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookLoginCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/sns/HSPFacebookService$13;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService$13;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$13$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogin(Lcom/hangame/hsp/HSPResult;)V
    .locals 4

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$13$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$13;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$13;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iget-object v1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$13$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$13;

    iget-object v1, v1, Lcom/hangame/hsp/sns/HSPFacebookService$13;->val$message:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$13$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$13;

    iget-object v2, v2, Lcom/hangame/hsp/sns/HSPFacebookService$13;->val$image:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/hangame/hsp/sns/HSPFacebookService$13$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$13;

    iget-object v3, v3, Lcom/hangame/hsp/sns/HSPFacebookService$13;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/sns/HSPFacebookService;->access$400(Lcom/hangame/hsp/sns/HSPFacebookService;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$13$1;->this$1:Lcom/hangame/hsp/sns/HSPFacebookService$13;

    iget-object v0, v0, Lcom/hangame/hsp/sns/HSPFacebookService$13;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;

    invoke-interface {v0, p1}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;->onImageUpload(Lcom/hangame/hsp/HSPResult;)V

    goto :goto_0
.end method
