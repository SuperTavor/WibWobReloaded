.class public abstract Lcom/toast/android/analytics/common/network/RequestOperation;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String; = "RequestOperation"


# instance fields
.field mCanceledListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;

.field mCompleteListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;

.field mException:Ljava/lang/Exception;

.field mFailListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;

.field mIsAborted:Z

.field mIsComplete:Z

.field mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

.field mTargetUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract action()Ljava/lang/Object;
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

    invoke-interface {v0}, Lcom/toast/android/analytics/common/interfaces/IRequest;->close()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mIsAborted:Z

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCanceledListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCanceledListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;

    invoke-interface {v0}, Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;->onCanceled()V

    :cond_1
    return-void
.end method

.method public execute()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/toast/android/analytics/common/network/RequestOperation;->onPreExecute()V

    :try_start_0
    invoke-virtual {p0}, Lcom/toast/android/analytics/common/network/RequestOperation;->action()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/common/network/RequestOperation;->onPostExecute(Ljava/lang/Object;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iput-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mException:Ljava/lang/Exception;

    const-string v0, "RequestOperation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mException:Ljava/lang/Exception;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/toast/android/analytics/common/utils/Tracer;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v1}, Lcom/toast/android/analytics/common/network/RequestOperation;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/toast/android/analytics/common/network/RequestOperation;->onPostExecute(Ljava/lang/Object;)V

    throw v0
.end method

.method public getRequest()Lcom/toast/android/analytics/common/interfaces/IRequest;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

    return-object v0
.end method

.method onPostExecute(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mIsComplete:Z

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

    invoke-interface {v0}, Lcom/toast/android/analytics/common/interfaces/IRequest;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

    :cond_0
    iget-boolean v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mIsAborted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCanceledListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCanceledListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;

    invoke-interface {v0}, Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;->onCanceled()V

    :cond_1
    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mException:Ljava/lang/Exception;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mException:Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lcom/toast/android/analytics/common/network/RequestOperation;->onPostFail(Ljava/lang/Exception;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mFailListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mFailListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;

    iget-object v1, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;->onFail(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/toast/android/analytics/common/network/RequestOperation;->onPostSuccess(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCompleteListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCompleteListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;

    invoke-interface {v0, p1}, Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;->onComplete(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method onPostFail(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method onPostSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method onPreExecute()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mIsAborted:Z

    iput-boolean v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mIsComplete:Z

    return-void
.end method

.method public setOnCanceledListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCanceledListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCanceledListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCanceledListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCanceledListener;

    return-void
.end method

.method public setOnCompleteListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCompleteListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCompleteListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mCompleteListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnCompleteListener;

    return-void
.end method

.method public setOnFailListener(Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mFailListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mFailListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mFailListener:Lcom/toast/android/analytics/common/network/RequestOperation$IOnFailListener;

    return-void
.end method

.method public setRequest(Lcom/toast/android/analytics/common/interfaces/IRequest;)V
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

    :cond_0
    iput-object p1, p0, Lcom/toast/android/analytics/common/network/RequestOperation;->mRequest:Lcom/toast/android/analytics/common/interfaces/IRequest;

    return-void
.end method
