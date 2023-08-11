.class public final Lcom/hangame/hsp/ui/ViewEventManager;
.super Ljava/lang/Object;


# static fields
.field private static final sCloseViewEventList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hangame/hsp/ui/ViewEventManager;->sCloseViewEventList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/ViewEventManager;->sCloseViewEventList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/ViewEventManager;->sCloseViewEventList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static notifyCloseViewEvent(Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 5

    sget-object v2, Lcom/hangame/hsp/ui/ViewEventManager;->sCloseViewEventList:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/ViewEventManager;->sCloseViewEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;

    sget-object v1, Lcom/hangame/hsp/ui/ViewEventManager;->sCloseViewEventList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    invoke-interface {v4, p0}, Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;->onCloseView(Lcom/hangame/hsp/ui/HSPUiUri;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeCloseViewEventListener(Lcom/hangame/hsp/ui/ViewEventManager$CloseViewEventListener;)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/ViewEventManager;->sCloseViewEventList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/ViewEventManager;->sCloseViewEventList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
