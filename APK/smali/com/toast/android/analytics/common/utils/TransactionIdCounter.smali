.class public Lcom/toast/android/analytics/common/utils/TransactionIdCounter;
.super Ljava/lang/Object;


# static fields
.field static _sInstance:Lcom/toast/android/analytics/common/utils/TransactionIdCounter;


# instance fields
.field mTrasactionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;

    invoke-direct {v0}, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;-><init>()V

    sput-object v0, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->_sInstance:Lcom/toast/android/analytics/common/utils/TransactionIdCounter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->mTrasactionId:J

    return-void
.end method

.method public static getInstance()Lcom/toast/android/analytics/common/utils/TransactionIdCounter;
    .locals 1

    sget-object v0, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->_sInstance:Lcom/toast/android/analytics/common/utils/TransactionIdCounter;

    return-object v0
.end method


# virtual methods
.method public getTransactionId()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->mTrasactionId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->mTrasactionId:J

    iget-wide v0, p0, Lcom/toast/android/analytics/common/utils/TransactionIdCounter;->mTrasactionId:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
