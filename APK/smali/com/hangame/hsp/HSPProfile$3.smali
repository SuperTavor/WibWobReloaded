.class final Lcom/hangame/hsp/HSPProfile$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;

.field final synthetic val$resultList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPProfile$3;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;

    iput-object p2, p0, Lcom/hangame/hsp/HSPProfile$3;->val$resultList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hangame/hsp/HSPProfile$3;->val$callback:Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;

    iget-object v1, p0, Lcom/hangame/hsp/HSPProfile$3;->val$resultList:Ljava/util/List;

    const-string v2, "HSPSERVICE"

    invoke-static {v2}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/hangame/hsp/HSPProfile$HSPLoadProfilesCB;->onProfilesLoad(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
