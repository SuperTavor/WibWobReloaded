.class Lcom/hangame/hsp/HSPUtil$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPUtil$4;

.field final synthetic val$termsUrl:Lcom/hangame/hsp/ui/HSPUiUri;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$4;Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$4$1;->this$0:Lcom/hangame/hsp/HSPUtil$4;

    iput-object p2, p0, Lcom/hangame/hsp/HSPUtil$4$1;->val$termsUrl:Lcom/hangame/hsp/ui/HSPUiUri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseView(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$4$1;->val$termsUrl:Lcom/hangame/hsp/ui/HSPUiUri;

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "HSPUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloseViewEvent.onCloseView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/hangame/hsp/ui/ViewEventManager;->removeCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V

    sget-object v0, Lcom/hangame/hsp/ui/view/ToastTermsView;->RETURN_PARAM:Ljava/lang/String;

    invoke-static {v0}, Lcom/hangame/hsp/ui/AppBundle;->getBundle(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/hangame/hsp/HSPUtil$4$1$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPUtil$4$1$1;-><init>(Lcom/hangame/hsp/HSPUtil$4$1;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/hangame/hsp/ui/view/ToastTermsView;->RETURN_PARAM:Ljava/lang/String;

    invoke-static {v1}, Lcom/hangame/hsp/ui/AppBundle;->removeBundle(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/hangame/hsp/HSPUtil$4$1$2;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPUtil$4$1$2;-><init>(Lcom/hangame/hsp/HSPUtil$4$1;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/hangame/hsp/HSPUtil$4$1$3;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPUtil$4$1$3;-><init>(Lcom/hangame/hsp/HSPUtil$4$1;)V

    invoke-static {v0}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
