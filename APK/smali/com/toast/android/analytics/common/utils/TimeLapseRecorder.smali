.class public Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;
.super Ljava/lang/Object;


# static fields
.field static _sInstance:Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;


# instance fields
.field mLock:Ljava/lang/Object;

.field mMapTimer:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;

    invoke-direct {v0}, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->_sInstance:Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mMapTimer:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static getIntance()Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->_sInstance:Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 2

    iget-object v1, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mMapTimer:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mMapTimer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mMapTimer:Ljava/util/HashMap;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startTimer(Ljava/lang/String;Z)Z
    .locals 4

    iget-object v1, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mMapTimer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mMapTimer:Ljava/util/HashMap;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit v1

    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopTimer(Ljava/lang/String;)J
    .locals 6

    iget-object v2, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mMapTimer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mMapTimer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    iget-object v3, p0, Lcom/toast/android/analytics/common/utils/TimeLapseRecorder;->mMapTimer:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_0
    monitor-exit v2

    const-wide/16 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
