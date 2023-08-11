.class final Lcom/hangame/hsp/util/contact/ContactProvider$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/util/contact/ContactProvider$SearchContactCB;

.field final synthetic val$phoneNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/hangame/hsp/util/contact/ContactProvider$SearchContactCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/ContactProvider$2;->val$phoneNo:Ljava/lang/String;

    iput-object p2, p0, Lcom/hangame/hsp/util/contact/ContactProvider$2;->val$callback:Lcom/hangame/hsp/util/contact/ContactProvider$SearchContactCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadContacts(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/hangame/hsp/HSPResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/util/contact/Contact;

    invoke-virtual {v0}, Lcom/hangame/hsp/util/contact/Contact;->getPhoneNum()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/hangame/hsp/util/EncryptUtil;->maskPhoneNumber(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/hangame/hsp/util/EncryptUtil;->unmaskPhoneNumber(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/hangame/hsp/util/contact/ContactProvider$2;->val$phoneNo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    new-instance v1, Lcom/hangame/hsp/util/contact/ContactProvider$2$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/hangame/hsp/util/contact/ContactProvider$2$1;-><init>(Lcom/hangame/hsp/util/contact/ContactProvider$2;Lcom/hangame/hsp/util/contact/Contact;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v1}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
