.class Lcom/hangame/hsp/HSPCore$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/HSPMyProfile$HSPLoadMyProfileCB;


# instance fields
.field final synthetic this$1:Lcom/hangame/hsp/HSPCore$5;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPCore$5;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPCore$5$1;->this$1:Lcom/hangame/hsp/HSPCore$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMyProfileLoad(Lcom/hangame/hsp/HSPMyProfile;Lcom/hangame/hsp/HSPResult;)V
    .locals 1

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hangame/hsp/HSPMyProfile;->useAddressBook()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/hangame/hsp/HSPCore$5$1$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPCore$5$1$1;-><init>(Lcom/hangame/hsp/HSPCore$5$1;)V

    invoke-static {v0}, Lcom/hangame/hsp/HSPSocial;->followMembersInAddressBook(Lcom/hangame/hsp/HSPSocial$HSPFollowMembersInAddressBookCB;)V

    :cond_0
    return-void
.end method
