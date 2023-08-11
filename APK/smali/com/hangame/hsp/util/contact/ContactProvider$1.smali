.class final Lcom/hangame/hsp/util/contact/ContactProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callback:Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;

.field final synthetic val$isCallbackInUIThread:Z

.field final synthetic val$searchName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1;->val$searchName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1;->val$isCallbackInUIThread:Z

    iput-object p3, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1;->val$callback:Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1;->val$searchName:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/hangame/hsp/util/HSPLocaleUtil;->isJapan()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1;->val$searchName:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/hangame/hsp/util/contact/ContactsWrapper;->getImpl()Lcom/hangame/hsp/util/contact/ContactsWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/hangame/hsp/util/contact/ContactsWrapper;->getContacts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "ContactProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContacts(): Load Contacts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ContactProvider"

    invoke-static {v1}, Lcom/hangame/hsp/HSPResult;->getSuccessResult(Ljava/lang/String;)Lcom/hangame/hsp/HSPResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-boolean v2, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1;->val$isCallbackInUIThread:Z

    if-eqz v2, :cond_2

    new-instance v2, Lcom/hangame/hsp/util/contact/ContactProvider$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/hangame/hsp/util/contact/ContactProvider$1$1;-><init>(Lcom/hangame/hsp/util/contact/ContactProvider$1;Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    invoke-static {v2}, Lcom/hangame/hsp/ui/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "data2 = 2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND display_name like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1;->val$searchName:Ljava/lang/String;

    const-string v2, "\'"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContactProvider"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/hangame/hsp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "ContactProvider"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/hangame/hsp/HSPResult;->getResult(Ljava/lang/String;I)Lcom/hangame/hsp/HSPResult;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/hangame/hsp/util/contact/ContactProvider$1;->val$callback:Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;

    invoke-interface {v2, v0, v1}, Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;->onLoadContacts(Ljava/util/List;Lcom/hangame/hsp/HSPResult;)V

    goto :goto_1
.end method
