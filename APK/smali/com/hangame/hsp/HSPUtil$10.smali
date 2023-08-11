.class final Lcom/hangame/hsp/HSPUtil$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/HSPUtil$HSPAddressBookInfoCB;


# direct methods
.method constructor <init>(Lcom/hangame/hsp/HSPUtil$HSPAddressBookInfoCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/HSPUtil$10;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPAddressBookInfoCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadContacts(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    .locals 6

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/util/contact/Contact;

    new-instance v3, Lcom/hangame/hsp/util/contact/AddressBookPersonalInfo;

    invoke-direct {v3}, Lcom/hangame/hsp/util/contact/AddressBookPersonalInfo;-><init>()V

    invoke-virtual {v0}, Lcom/hangame/hsp/util/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/hangame/hsp/util/contact/AddressBookPersonalInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hangame/hsp/util/contact/Contact;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/hangame/hsp/util/contact/AddressBookPersonalInfo;->setPhoneNo(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "HSPUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resultObj : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/hangame/hsp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$10;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPAddressBookInfoCB;

    invoke-interface {v0, v1, p2}, Lcom/hangame/hsp/HSPUtil$HSPAddressBookInfoCB;->onReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/hangame/hsp/HSPUtil$10;->val$callback:Lcom/hangame/hsp/HSPUtil$HSPAddressBookInfoCB;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/hangame/hsp/HSPUtil$HSPAddressBookInfoCB;->onReceive(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
