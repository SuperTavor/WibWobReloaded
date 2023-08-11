.class Lcom/hangame/hsp/sns/HSPFacebookService$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/core/HSPUiHttpResHandler;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

.field final synthetic val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/HSPFacebookService;Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/HSPFacebookService$20;->this$0:Lcom/hangame/hsp/sns/HSPFacebookService;

    iput-object p2, p0, Lcom/hangame/hsp/sns/HSPFacebookService$20;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/lang/Object;Lcom/hangame/hsp/HSPResult;ILjava/lang/Object;)V
    .locals 2

    const-string v0, "HSPFacebookService"

    check-cast p4, Ljava/lang/String;

    invoke-static {v0, p4}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "picture"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/hangame/hsp/ui/AppBundle;->setBundle(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/sns/HSPFacebookService$20;->val$callback:Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;

    invoke-interface {v0, p2}, Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;->onImageUpload(Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
