.class final Lcom/hangame/hsp/HSPGameMail$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPGameMail$3;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/hangame/hsp/HSPGameMail$3;->val$callback:Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "ETC"

    const/16 v4, 0x1003

    invoke-static {v3, v4}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/hangame/hsp/HSPGameMail$HSPLoadGameMailsForPageCB;->onGameMailsLoad(Ljava/util/List;ILcom/hangame/hsp/HSPResult;)V

    return-void
.end method
