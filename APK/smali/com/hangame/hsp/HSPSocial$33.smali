.class final Lcom/hangame/hsp/HSPSocial$33;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSocial$33;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "OAuthProvider is null."

    iget-object v1, p0, Lcom/hangame/hsp/HSPSocial$33;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;

    const/4 v2, 0x0

    const-string v3, "SERVICEDOMAIN"

    const/16 v4, 0x1009

    invoke-static {v3, v4, v0}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;ILjava/lang/String;)Lcom/hangame/hsp/HSPResult;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/hangame/hsp/HSPSocial$HSPLoadFriendsCB;->onCompletion(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    return-void
.end method
