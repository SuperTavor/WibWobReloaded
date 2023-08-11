.class public abstract Lcom/hangame/hsp/util/contact/ContactsWrapper;
.super Ljava/lang/Object;


# static fields
.field private static impl:Lcom/hangame/hsp/util/contact/ContactsWrapper;


# instance fields
.field protected final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/hangame/hsp/ui/ResourceUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/hangame/hsp/util/contact/ContactsWrapper;->contentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static final getImpl()Lcom/hangame/hsp/util/contact/ContactsWrapper;
    .locals 1

    sget-object v0, Lcom/hangame/hsp/util/contact/ContactsWrapper;->impl:Lcom/hangame/hsp/util/contact/ContactsWrapper;

    return-object v0
.end method

.method public static final setImpl(Lcom/hangame/hsp/util/contact/ContactsWrapper;)V
    .locals 0

    sput-object p0, Lcom/hangame/hsp/util/contact/ContactsWrapper;->impl:Lcom/hangame/hsp/util/contact/ContactsWrapper;

    return-void
.end method


# virtual methods
.method protected abstract getContacts(Ljava/lang/String;)Ljava/util/List;
.end method
