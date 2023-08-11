.class Lcom/hangame/hsp/HSPMyProfile$30$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPSocial$HSPFollowMembersInAddressBookCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/HSPMyProfile$30;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPMyProfile$30;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPMyProfile$30$1;->this$1:Lcom/hangame/hsp/HSPMyProfile$30;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMembersFollow(Lcom/hangame/hsp/HSPResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HSPMyProfile"

    const-string v1, "followed members in addressBook successfully."

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
