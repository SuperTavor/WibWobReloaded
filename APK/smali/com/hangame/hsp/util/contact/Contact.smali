.class public Lcom/hangame/hsp/util/contact/Contact;
.super Ljava/lang/Object;


# instance fields
.field private contactId:J

.field private email:Ljava/lang/String;

.field private final emailList:Ljava/util/ArrayList;

.field private name:Ljava/lang/String;

.field private phoneNum:Ljava/lang/String;

.field private phoneticName:Ljava/lang/String;

.field private sortKey:Ljava/lang/String;

.field private userIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->sortKey:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->emailList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->emailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->phoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->phoneticName:Ljava/lang/String;

    return-object v0
.end method

.method public getSortId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->sortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUserIcon()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->userIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/hangame/hsp/util/contact/Contact;->contactId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/hangame/hsp/util/BitmapUtil;->resizeBitmap(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->userIcon:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->userIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setContactId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/hangame/hsp/util/contact/Contact;->contactId:J

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/Contact;->email:Ljava/lang/String;

    return-void
.end method

.method public setEmailList(Ljava/util/ArrayList;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/hangame/hsp/util/contact/Contact;->emailList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/Contact;->name:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/Contact;->phoneNum:Ljava/lang/String;

    return-void
.end method

.method public setPhoneticName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/Contact;->phoneticName:Ljava/lang/String;

    return-void
.end method

.method public setSortKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hangame/hsp/util/contact/Contact;->sortKey:Ljava/lang/String;

    return-void
.end method
