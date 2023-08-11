.class public final Lcom/hangame/hsp/util/contact/ContactProvider;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactProvider"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAllContacts(Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;)V
    .locals 2

    const-string v0, "ContactProvider"

    const-string v1, "loadAllContacts()"

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/hangame/hsp/util/contact/ContactProvider;->loadContacts(Ljava/lang/String;ZLcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;)V

    return-void
.end method

.method public static loadContacts(Ljava/lang/String;Lcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;)V
    .locals 3

    const-string v0, "ContactProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadContacts(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/hangame/hsp/util/contact/ContactProvider;->loadContacts(Ljava/lang/String;ZLcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;)V

    return-void
.end method

.method private static loadContacts(Ljava/lang/String;ZLcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;)V
    .locals 1

    new-instance v0, Lcom/hangame/hsp/util/contact/ContactProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/hangame/hsp/util/contact/ContactProvider$1;-><init>(Ljava/lang/String;ZLcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;)V

    invoke-static {v0}, Lcom/hangame/hsp/core/HSPThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static searchContacWithtEncryptPhoneNo(Ljava/lang/String;Lcom/hangame/hsp/util/contact/ContactProvider$SearchContactCB;)V
    .locals 3

    const-string v0, "ContactProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchContacWithtEncryptPhoneNo(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hangame/hsp/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/hangame/hsp/util/contact/ContactProvider$2;

    invoke-direct {v2, p0, p1}, Lcom/hangame/hsp/util/contact/ContactProvider$2;-><init>(Ljava/lang/String;Lcom/hangame/hsp/util/contact/ContactProvider$SearchContactCB;)V

    invoke-static {v0, v1, v2}, Lcom/hangame/hsp/util/contact/ContactProvider;->loadContacts(Ljava/lang/String;ZLcom/hangame/hsp/util/contact/ContactProvider$LoadContactsCB;)V

    return-void
.end method
