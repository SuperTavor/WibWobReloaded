.class Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler$1;->this$0:Lcom/hangame/hsp/webclient/hsp/LaunchGameHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hangame/hsp/ui/HSPUiLauncher;->closeAllView()V

    return-void
.end method
