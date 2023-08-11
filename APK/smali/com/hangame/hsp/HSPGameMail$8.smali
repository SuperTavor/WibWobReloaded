.class Lcom/hangame/hsp/HSPGameMail$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/hangame/hsp/HSPGameMail;

.field final synthetic val$callback:Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGameMail;Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMail$8;->this$0:Lcom/hangame/hsp/HSPGameMail;

    iput-object p2, p0, Lcom/hangame/hsp/HSPGameMail$8;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$8;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;

    const-string v1, "ETC"

    const/16 v2, 0x1003

    invoke-static {v1, v2}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/hangame/hsp/HSPGameMail$HSPRemoveGameMailCB;->onGameMailRemove(Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
