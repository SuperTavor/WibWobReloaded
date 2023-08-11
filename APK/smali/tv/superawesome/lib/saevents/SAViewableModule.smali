.class public Ltv/superawesome/lib/saevents/SAViewableModule;
.super Ljava/lang/Object;


# static fields
.field private static final DELAY:I = 0x3e8

.field private static final MAX_DISPLAY_TICKS:S = 0x1s

.field private static final MAX_VIDEO_TICKS:S = 0x2s


# instance fields
.field private check_tick:S

.field private handler:Landroid/os/Handler;

.field private runnable:Ljava/lang/Runnable;

.field private ticks:S


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->ticks:S

    iput-short v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->check_tick:S

    iput-object v1, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->handler:Landroid/os/Handler;

    iput-object v1, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/lib/saevents/SAViewableModule;)S
    .locals 1

    iget-short v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->ticks:S

    return v0
.end method

.method static synthetic access$008(Ltv/superawesome/lib/saevents/SAViewableModule;)S
    .locals 2

    iget-short v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->ticks:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->ticks:S

    return v0
.end method

.method static synthetic access$100(Ltv/superawesome/lib/saevents/SAViewableModule;)S
    .locals 1

    iget-short v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->check_tick:S

    return v0
.end method

.method static synthetic access$108(Ltv/superawesome/lib/saevents/SAViewableModule;)S
    .locals 2

    iget-short v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->check_tick:S

    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->check_tick:S

    return v0
.end method

.method static synthetic access$200(Ltv/superawesome/lib/saevents/SAViewableModule;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Ltv/superawesome/lib/saevents/SAViewableModule;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public checkViewableStatusForDisplay(Landroid/view/ViewGroup;Ltv/superawesome/lib/saevents/SAViewableModule$Listener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Ltv/superawesome/lib/saevents/SAViewableModule;->checkViewableStatusForView(Landroid/view/ViewGroup;ILtv/superawesome/lib/saevents/SAViewableModule$Listener;)V

    return-void
.end method

.method public checkViewableStatusForVideo(Landroid/view/ViewGroup;Ltv/superawesome/lib/saevents/SAViewableModule$Listener;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Ltv/superawesome/lib/saevents/SAViewableModule;->checkViewableStatusForView(Landroid/view/ViewGroup;ILtv/superawesome/lib/saevents/SAViewableModule$Listener;)V

    return-void
.end method

.method public checkViewableStatusForView(Landroid/view/ViewGroup;ILtv/superawesome/lib/saevents/SAViewableModule$Listener;)V
    .locals 4

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Ltv/superawesome/lib/saevents/SAViewableModule$Listener;->saDidFindViewOnScreen(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->handler:Landroid/os/Handler;

    :cond_2
    new-instance v0, Ltv/superawesome/lib/saevents/SAViewableModule$1;

    invoke-direct {v0, p0, p2, p3, p1}, Ltv/superawesome/lib/saevents/SAViewableModule$1;-><init>(Ltv/superawesome/lib/saevents/SAViewableModule;ILtv/superawesome/lib/saevents/SAViewableModule$Listener;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->runnable:Ljava/lang/Runnable;

    iget-object v0, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ltv/superawesome/lib/saevents/SAViewableModule;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
