.class Lcom/hangame/hsp/HSPUtil$4$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/HSPUtil$4$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$4$1$1;->this$1:Lcom/hangame/hsp/HSPUtil$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$4$1$1;->this$1:Lcom/hangame/hsp/HSPUtil$4$1;

    iget-object v0, v0, Lcom/hangame/hsp/HSPUtil$4$1;->this$0:Lcom/hangame/hsp/HSPUtil$4;

    iget-object v0, v0, Lcom/hangame/hsp/HSPUtil$4;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithToastTermsCB;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPUtil$HSPAlertViewWithToastTermsCB;->onCheckResult(Ljava/lang/Boolean;)V

    return-void
.end method
