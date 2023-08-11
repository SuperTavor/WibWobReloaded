.class public Lcom/toast/android/analytics/common/RequestManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;
.implements Lcom/toast/android/analytics/interfaces/IRequestManager;


# static fields
.field static DELAYED_LOG_FLUSH_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RequestManager"

.field static _sCounter:I

.field static _sInitialized:Z

.field static _sInstance:Lcom/toast/android/analytics/common/RequestManager;


# instance fields
.field mOnResponseListener:Lcom/toast/android/analytics/interfaces/IOnResponseListener;

.field mRequestRecordThread:Lcom/toast/android/analytics/job/RequestRecordThread;

.field mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/common/RequestManager;

    invoke-direct {v0}, Lcom/toast/android/analytics/common/RequestManager;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/common/RequestManager;->_sInstance:Lcom/toast/android/analytics/common/RequestManager;

    const/16 v0, 0x1388

    sput v0, Lcom/toast/android/analytics/common/RequestManager;->DELAYED_LOG_FLUSH_TIME:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/toast/android/analytics/common/RequestManager;
    .locals 2

    sget-boolean v0, Lcom/toast/android/analytics/common/RequestManager;->_sInitialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ApplicationContext in the RequestManager is not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/toast/android/analytics/common/RequestManager;->_sInstance:Lcom/toast/android/analytics/common/RequestManager;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/toast/android/analytics/common/RequestManager;->_sInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/toast/android/analytics/common/RequestManager;->_sInitialized:Z

    invoke-static {p0}, Lcom/toast/android/analytics/common/SqlRequestQueue;->initialize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/toast/android/analytics/model/RequestData;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestRecordThread:Lcom/toast/android/analytics/job/RequestRecordThread;

    invoke-virtual {v0, p1}, Lcom/toast/android/analytics/job/RequestRecordThread;->addRequest(Lcom/toast/android/analytics/model/RequestData;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestRecordThread:Lcom/toast/android/analytics/job/RequestRecordThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/job/RequestRecordThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->awake()V

    :cond_0
    return-void
.end method

.method public completeScheduledJob(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "RequestManager"

    const-string v1, "completeScheduledJob!"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RequestWorkerThread"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-virtual {v0, v2}, Lcom/toast/android/analytics/job/RequestWorkerThread;->setScheduledJobListener(Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;)V

    iput-object v2, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "RequestWorkerThread"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestRecordThread:Lcom/toast/android/analytics/job/RequestRecordThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestRecordThread:Lcom/toast/android/analytics/job/RequestRecordThread;

    invoke-virtual {v0, v2}, Lcom/toast/android/analytics/job/RequestRecordThread;->setScheduledJobListener(Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;)V

    iput-object v2, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestRecordThread:Lcom/toast/android/analytics/job/RequestRecordThread;

    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mOnResponseListener:Lcom/toast/android/analytics/interfaces/IOnResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public setOnResponseListener(Lcom/toast/android/analytics/interfaces/IOnResponseListener;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mOnResponseListener:Lcom/toast/android/analytics/interfaces/IOnResponseListener;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mOnResponseListener:Lcom/toast/android/analytics/interfaces/IOnResponseListener;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/common/RequestManager;->mOnResponseListener:Lcom/toast/android/analytics/interfaces/IOnResponseListener;

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestRecordThread:Lcom/toast/android/analytics/job/RequestRecordThread;

    if-nez v0, :cond_0

    const-string v0, "RequestManager"

    const-string v1, "RequestRecordThread will be started!"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/toast/android/analytics/job/RequestRecordThread;

    invoke-direct {v0}, Lcom/toast/android/analytics/job/RequestRecordThread;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestRecordThread:Lcom/toast/android/analytics/job/RequestRecordThread;

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestRecordThread:Lcom/toast/android/analytics/job/RequestRecordThread;

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/job/RequestRecordThread;->setScheduledJobListener(Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestRecordThread:Lcom/toast/android/analytics/job/RequestRecordThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/job/RequestRecordThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    if-nez v0, :cond_1

    const-string v0, "RequestManager"

    const-string v1, "RequestWorkerThread will be started!"

    invoke-static {v0, v1}, Lcom/toast/android/analytics/common/utils/Tracer;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-direct {v0}, Lcom/toast/android/analytics/job/RequestWorkerThread;-><init>()V

    iput-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-virtual {v0, p0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->setScheduledJobListener(Lcom/toast/android/analytics/common/interfaces/IScheduledJobListener;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->start()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    invoke-virtual {v0}, Lcom/toast/android/analytics/job/RequestWorkerThread;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/common/RequestManager;->mRequestWorkerThread:Lcom/toast/android/analytics/job/RequestWorkerThread;

    :cond_0
    return-void
.end method
