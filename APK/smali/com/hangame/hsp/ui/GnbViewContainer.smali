.class public abstract Lcom/hangame/hsp/ui/GnbViewContainer;
.super Lcom/hangame/hsp/ui/BaseViewContainer;


# static fields
.field protected static final GNB_ITEMS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gameplus"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "social"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "myprofile"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "more"

    aput-object v2, v0, v1

    sput-object v0, Lcom/hangame/hsp/ui/GnbViewContainer;->GNB_ITEMS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hangame/hsp/ui/BaseViewContainer;-><init>()V

    return-void
.end method


# virtual methods
.method protected final changeGnb(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 1

    invoke-static {}, Lcom/hangame/hsp/ui/ViewHistoryManager;->clearHistory()V

    invoke-static {}, Lcom/hangame/hsp/ui/HSPUiLauncher;->getInstance()Lcom/hangame/hsp/ui/HSPUiLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hangame/hsp/ui/HSPUiLauncher;->launch(Lcom/hangame/hsp/ui/HSPUiUri;)Lcom/hangame/hsp/HSPResult;

    return-void
.end method
