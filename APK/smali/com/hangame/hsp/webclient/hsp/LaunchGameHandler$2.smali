.class Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;

.field final synthetic val$bundleId:Ljava/lang/String;

.field final synthetic val$urlScheme:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$2;->this$0:Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;

    iput-object p2, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$2;->val$urlScheme:Ljava/lang/String;

    iput-object p3, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$2;->val$bundleId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$2;->val$urlScheme:Ljava/lang/String;

    iget-object v1, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$2;->val$bundleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/AppUtil;->launchApp(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
