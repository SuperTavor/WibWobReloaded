.class Lcom/hangame/hsp/HSPCore$5$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPSocial$HSPFollowMembersInAddressBookCB;


# instance fields
.field final synthetic this$2:Lcom/hangame/hsp/HSPCore$5$1;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPCore$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPCore$5$1$1;->this$2:Lcom/hangame/hsp/HSPCore$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMembersFollow(Lcom/hangame/hsp/HSPResult;)V
    .locals 3

    const-string v0, "HSPCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login: followMembersInAddressBook:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
