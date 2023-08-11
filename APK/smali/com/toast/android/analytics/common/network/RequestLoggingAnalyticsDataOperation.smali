.class public Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;
.super Lcom/toast/android/analytics/common/network/RequestOperation;


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestLoggingAnalyticsDataOperation"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/toast/android/analytics/common/network/RequestOperation;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic action()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->action()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public action()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

    invoke-interface {v0}, Lcom/toast/android/analytics/common/interfaces/IRequest;->request()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic onPostSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/common/network/RequestLoggingAnalyticsDataOperation;->onPostSuccess(Ljava/lang/String;)V

    return-void
.end method

.method onPostSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
