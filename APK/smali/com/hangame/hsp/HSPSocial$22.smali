.class final Lcom/hangame/hsp/HSPSocial$22;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPSocial$HSPFollowMembersInAddressBookCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPSocial$HSPFollowMembersInAddressBookCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPSocial$22;->val$callback:Lcom/hangame/hsp/HSPSocial$HSPFollowMembersInAddressBookCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadContacts(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x33

    if-ge v1, v2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/util/contact/Contact;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/contact/Contact;->getPhoneNum()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/hangame/hsp/util/contact/Contact;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/EncryptUtil;->maskPhoneNumber(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    move v1, v0

    :goto_1
    const/16 v2, 0x32

    if-ge v1, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v2, v0, :cond_3

    :cond_2
    new-instance v0, Lcom/hangame/hsp/HSPSocial$22$1;

    invoke-direct {v0, p0}, Lcom/hangame/hsp/HSPSocial$22$1;-><init>(Lcom/hangame/hsp/HSPSocial$22;)V

    new-instance v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetWhiteListWithPhoneNo;

    invoke-direct {v1}, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetWhiteListWithPhoneNo;-><init>()V

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetWhiteListWithPhoneNo;->header:Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;

    invoke-static {v2}, Lcom/hangame/hsp/core/MashupMessageUtil;->makeHeader(Lcom/hangame/hsp/xdr/hsp13/request/ReqHeader;)V

    invoke-static {}, Lcom/hangame/hsp/HSPCore;->getInstance()Lcom/hangame/hsp/HSPCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hangame/hsp/HSPCore;->getMemberNo()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetWhiteListWithPhoneNo;->memberNo:J

    iget-object v2, v1, Lcom/hangame/hsp/xdr/hsp13/request/ReqSetWhiteListWithPhoneNo;->phoneNoList:Ljava/util/Vector;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, v0}, Lcom/hangame/hsp/core/MashupMessageUtil;->request(LXDR/IMessage;Lcom/hangame/hsp/core/HSPResHandler;)V

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/util/contact/Contact;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/contact/Contact;->getPhoneNum()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/hangame/hsp/util/contact/Contact;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/EncryptUtil;->maskPhoneNumber(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method
