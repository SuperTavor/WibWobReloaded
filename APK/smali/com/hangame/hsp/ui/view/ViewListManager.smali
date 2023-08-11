.class public final Lcom/hangame/hsp/ui/view/ViewListManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewListManager"

.field private static final lock:Ljava/lang/Object;

.field private static final sUriMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/hangame/hsp/ui/view/ViewListManager;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/hangame/hsp/ui/view/ViewListManager;->sUriMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addView(Ljava/lang/String;Lcom/hangame/hsp/ui/HSPUiUri;)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/view/ViewListManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/view/ViewListManager;->sUriMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static clearViewList()V
    .locals 3

    sget-object v1, Lcom/hangame/hsp/ui/view/ViewListManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "ViewListManager"

    const-string v2, "clearViewList()"

    invoke-static {v0, v2}, Lcom/hangame/hsp/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/hangame/hsp/ui/view/ViewListManager;->sUriMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getView(Ljava/lang/String;)Lcom/hangame/hsp/ui/HSPUiUri;
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/view/ViewListManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/view/ViewListManager;->sUriMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hangame/hsp/ui/HSPUiUri;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeView(Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/hangame/hsp/ui/view/ViewListManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hangame/hsp/ui/view/ViewListManager;->sUriMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
