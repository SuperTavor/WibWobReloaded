.class Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$2:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1$1;->this$2:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1$1;->this$2:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$1000(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)Lcom/hangame/hsp/ui/HSPUiUri;

    move-result-object v0

    const-string v1, "_history"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/hangame/hsp/ui/HSPUiUri;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hangame/hsp/ui/DialogManager;->closeProgressDialog()V

    iget-object v0, p0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1$1;->this$2:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5$1;->this$1:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;

    iget-object v0, v0, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView$5;->this$0:Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;

    invoke-static {v0}, Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;->access$1100(Lcom/hangame/hsp/ui/view/profile/MyProfilePhotoCropView;)V

    return-void
.end method
