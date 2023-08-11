.class public Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;
.super Lcom/hangame/hsp/util/contact/ContactsWrapper;


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DEFAULT_SELECTION:Ljava/lang/String; = "data2 = 2"

.field private static final PROJECTION_CONTENT:[Ljava/lang/String;

.field private static final SORT_ORDER:Ljava/lang/String; = "display_name COLLATE LOCALIZED ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->PROJECTION_CONTENT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/util/contact/ContactsWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContacts(Ljava/lang/String;)Ljava/util/List;
    .locals 11

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->PROJECTION_CONTENT:[Ljava/lang/String;

    const-string v5, "display_name COLLATE LOCALIZED ASC"

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->PROJECTION_CONTENT:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    sget-object v1, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->PROJECTION_CONTENT:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    sget-object v1, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->PROJECTION_CONTENT:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v1, v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v9, "-"

    const-string v10, ""

    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v8, :cond_0

    new-instance v9, Lcom/hangame/hsp/util/contact/Contact;

    invoke-direct {v9}, Lcom/hangame/hsp/util/contact/Contact;-><init>()V

    invoke-virtual {v9, v6, v7}, Lcom/hangame/hsp/util/contact/Contact;->setContactId(J)V

    invoke-virtual {v9, v8}, Lcom/hangame/hsp/util/contact/Contact;->setName(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Lcom/hangame/hsp/util/contact/Contact;->setPhoneNum(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/hangame/hsp/util/contact/ContactsWrapperImpl;->PROJECTION_CONTENT:[Ljava/lang/String;

    const-string v3, "data2 = 2"

    const-string v5, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method
