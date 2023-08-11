.class Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;

.field final synthetic val$gameNo:I

.field final synthetic val$requesterUri:Ljava/lang/String;

.field final synthetic val$storeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$3;->this$0:Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;

    iput p2, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$3;->val$gameNo:I

    iput-object p3, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$3;->val$storeUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$3;->val$requesterUri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget v0, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$3;->val$gameNo:I

    iget-object v1, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$3;->val$storeUrl:Ljava/lang/String;

    invoke-static {}, Lcom/hangame/hsp/auth/lnc/LncInfoManager;->getGameRedirectionUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$3;->val$requesterUri:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/hangame/hsp/util/AppUtil;->launchStore(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
