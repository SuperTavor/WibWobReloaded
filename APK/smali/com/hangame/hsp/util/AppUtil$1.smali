.class final Lcom/hangame/hsp/util/AppUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic val$gameNo:I

.field final synthetic val$marketUrl:Ljava/lang/String;

.field final synthetic val$redirectionUrl:Ljava/lang/String;

.field final synthetic val$requesterUri:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/hangame/hsp/util/AppUtil$1;->val$gameNo:I

    iput-object p2, p0, Lcom/hangame/hsp/util/AppUtil$1;->val$marketUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/util/AppUtil$1;->val$redirectionUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/util/AppUtil$1;->val$requesterUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget v0, p0, Lcom/hangame/hsp/util/AppUtil$1;->val$gameNo:I

    iget-object v1, p0, Lcom/hangame/hsp/util/AppUtil$1;->val$marketUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/hangame/hsp/util/AppUtil$1;->val$redirectionUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/hangame/hsp/util/AppUtil$1;->val$requesterUri:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/util/AppUtil;->launchStore(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    return-void
.end method
