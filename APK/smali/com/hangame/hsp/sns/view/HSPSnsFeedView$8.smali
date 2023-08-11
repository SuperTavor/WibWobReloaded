.class Lcom/hangame/hsp/sns/view/HSPSnsFeedView$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/sns/HSPFacebook$HSPFacebookUploadImageCB;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$8;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageUpload(Lcom/hangame/hsp/HSPResult;)V
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    iget-object v0, p0, Lcom/hangame/hsp/sns/view/HSPSnsFeedView$8;->this$0:Lcom/hangame/hsp/sns/view/HSPSnsFeedView;

    invoke-static {v0, p1}, Lcom/hangame/hsp/sns/view/HSPSnsFeedView;->access$500(Lcom/hangame/hsp/sns/view/HSPSnsFeedView;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
